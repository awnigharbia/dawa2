import 'package:authentication_api/authentication_api.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:dawa2/config/router/route_name_builder.dart';
import 'package:dawa2/config/router/router.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:dawa2/locator.dart';
import 'package:dawa2/modules/auth/auth.dart';

import 'modules/auth/bloc/auth/auth_bloc.dart';
import 'modules/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
  ));

  // init
  await Firebase.initializeApp();

  setupRouter();
  setupLocator();
  await locator<LocalDB>().setupLocalDatabase();
  Bloc.observer = SimpleBlocObserver();

  runApp(
    App(
      authenticationRepository: AuthenticationApiClient(),
    ),
  );
}

class App extends StatelessWidget {
  final AuthenticationApiClient? authenticationRepository;

  const App({
    key,
    @required this.authenticationRepository,
  })  : assert(authenticationRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => AuthenticationApiClient()),
        RepositoryProvider(
            create: (_) => ClinicApiClient(centerPoint: CenterPoint(0, 0))),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => AuthenticationBloc(
                authenticationRepository: authenticationRepository),
          ),
          BlocProvider(create: (_) => LoginCubit(authenticationRepository!)),
          BlocProvider(
            create: (_) => LocationBloc(
              locationServices: LocationServices(),
            ),
          )
        ],
        child: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale locale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;

    state.setAndSaveLocale(locale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  Locale? _locale;
  LocaleUtil? _localeUtil = LocaleUtil();

  NavigatorState? get _navigator => _navigatorKey.currentState;

  void setAndSaveLocale(Locale locale) {
    if (locale == _locale) return;

    var box = Hive.box('user');

    box.put('lang', locale.languageCode);

    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();
    return MaterialApp(
      title: 'Lazzy Pet',
      locale: _locale,
      navigatorKey: _navigatorKey,
      supportedLocales: [
        Locale("en", "US"),
        Locale("ar", "SA"),
      ],
      localizationsDelegates: [
        Localization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: _localeUtil!.localeCallback,
      builder: (context, child) {
        LocalDB _localDB = locator<LocalDB>();
        _localDB.box("onBoarding");
        var lang = Localizations.localeOf(context).languageCode;

        child = Theme(
          data: ThemeData(
            textTheme: Theme.of(context).textTheme.apply(
                  fontFamily: lang == 'ar'
                      ? "Droid"
                      : GoogleFonts.montserrat().fontFamily,
                  fontSizeDelta: lang == 'ar' ? -2.0 : 0.0,
                ),
            primarySwatch: ColorSchema.green,
          ),
          child: child!,
        );

        child = botToastBuilder(context, child);

        return BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            state.map(
                unkown: (_) => null,
                authenticated: (state) {
                  if ((state.user!.isNew! && state.user!.name!.isEmpty) ||
                      state.user!.name!.isEmpty) {
                    FluroRouter.appRouter.navigateTo(
                        _navigator!.context, RouteNameBuilder.updateDisplayName,
                        clearStack: true);
                  } else {
                    FluroRouter.appRouter.navigateTo(
                        _navigator!.context, RouteNameBuilder.tabsResource,
                        clearStack: true);
                  }
                },
                unAuthenticated: (_) {
                  _localDB.get("seen", defaultValue: false)
                      ? FluroRouter.appRouter.navigateTo(
                          _navigator!.context, RouteNameBuilder.loginResource,
                          clearStack: true)
                      : FluroRouter.appRouter.navigateTo(
                          _navigator!.context, RouteNameBuilder.onBoarding,
                          clearStack: true);
                });
          },
          child: child,
        );
      },
      navigatorObservers: [BotToastNavigatorObserver()],
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => FluroRouter.appRouter
          .matchRoute(context, settings.name, routeSettings: settings)
          .route,
    );
  }
}

extension RepaireForOverflow on String {
  repaireForOverflow() => this.replaceAll("", "\u{200B}");
}
