import 'package:appointments_api/appointments_api.dart';
import 'package:category_api/category_api.dart';
import 'package:clinic_api/clinic_api.dart' as clinic_api;
import 'package:dawa2/core/enum/languages.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/config/router/route_name_builder.dart';
import 'package:dawa2/modules/auth/auth.dart';
import 'package:dawa2/modules/auth/bloc/update_profile_photo/update_profile_photo_bloc.dart';
import 'package:dawa2/modules/auth/pages/update_profile/update_profile_image.dart';
import 'package:dawa2/modules/book_appointment/book_appointment.dart';
import 'package:dawa2/modules/category/category.dart';
import 'package:dawa2/modules/category/pages/category_detail.dart';
import 'package:dawa2/modules/category/pages/category_tab.dart';
import 'package:dawa2/modules/clinic/clinic.dart' as clinic_module;
import 'package:dawa2/modules/clinic/clinic.dart';
import 'package:dawa2/modules/home/home.dart';
import 'package:dawa2/modules/settings/repositories/repositories.dart';
import 'package:dawa2/modules/settings/settings.dart';
import 'package:dawa2/modules/appointments/appointments.dart';
import 'package:dawa2/modules/viewall_clinics/viewall_clinics.dart';
import 'package:settings_api/settings_api.dart';
import 'package:user_api/user_api.dart';

void setupRouter() {
  FluroRouter.appRouter
    ..define(
      '/',
      handler: Handler(
        handlerFunc: (context, params) => SplashScreen(),
      ),
    )
    ..define(
      RouteNameBuilder.loginResource,
      handler: Handler(
        handlerFunc: (context, params) => LoginScreen(),
      ),
    )
    ..define(
      "${RouteNameBuilder.smsCodeVerifyResource}/:phoneNo/:verificationId/:resendToken",
      handler: Handler(handlerFunc: (context, params) {
        String phoneNo = params['phoneNo']![0];
        String verificationId = params['verificationId']![0];
        // int resendToken = int.parse(params['resendToken'][0]);

        return SmsCodeScreen(
          phoneNo: phoneNo,
          verificationId: verificationId,
          resendToken: 0,
        );
      }),
    )
    ..define(
      RouteNameBuilder.tabsResource,
      handler: Handler(handlerFunc: (context, params) => TabsScreen()),
    )
    ..define(
      RouteNameBuilder.homeResource,
      handler: Handler(handlerFunc: (context, params) => HomeTabScreen()),
    )
    ..define(
      RouteNameBuilder.sectionsResource,
      handler: Handler(
          handlerFunc: (context, params) => BlocProvider(
                create: (_) => CategoryBloc(
                  categoryRepository: CategoryRepository(
                      center: clinic_api.CenterPoint(0, 0),
                      categoryApiClient: CategoryApiClient(
                          center: clinic_api.CenterPoint(0, 0))),
                )..add(CategoryEvent.loadStarted()),
                child: CategoryTab(),
              )),
    )
    ..define(
      RouteNameBuilder.reservationsResource,
      handler: Handler(
        handlerFunc: (context, params) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => ViewUpcomingAppointmentsBloc(
                viewAppointmentsRepository: ViewAppointmentsRepository(
                  clinicApiClient: clinic_api.ClinicApiClient(),
                  appointmentApiClient: AppointmentApiClient(),
                ),
              )..add(ViewUpcomingAppointmentsEvent.loadStarted()),
            ),
            BlocProvider(
              create: (_) => ViewPassAppointmentsBloc(
                viewAppointmentsRepository: ViewAppointmentsRepository(
                  clinicApiClient: clinic_api.ClinicApiClient(),
                  appointmentApiClient: AppointmentApiClient(),
                ),
              )..add(ViewPassAppointmentsEvent.loadStarted()),
            ),
          ],
          child: ViewAppointments(),
        ),
      ),
    )
    ..define(
      RouteNameBuilder.settingsResource,
      handler: Handler(
        handlerFunc: (context, params) => Settings(),
      ),
    )
    ..define(
      RouteNameBuilder.language(),
      transitionType: TransitionType.inFromRight,
      handler: Handler(
        handlerFunc: (context, params) => LanguageScreen(),
      ),
    )
    ..define(
      "${RouteNameBuilder.settingsResource}/about",
      transitionType: TransitionType.inFromRight,
      handler: Handler(
        handlerFunc: (context, params) => AboutScreen(),
      ),
    )
    ..define(
      "${RouteNameBuilder.settingsResource}/callUs",
      transitionType: TransitionType.inFromRight,
      handler: Handler(
        handlerFunc: (context, params) => BlocProvider(
          create: (_) =>
              FeedbackCubit(settingsRepository: SettingsRepository()),
          child: FeedbackScreen(),
        ),
      ),
    )
    ..define(
      "${RouteNameBuilder.settingsResource}/clinicJoin",
      transitionType: TransitionType.inFromRight,
      handler: Handler(
        handlerFunc: (context, params) => BlocProvider(
          create: (_) => ClinicJoinCubit(
            settingsRepository:
                SettingsRepository(settingsApiClient: SettingsApiClient()),
          ),
          child: ClinicJoinScreen(),
        ),
      ),
    )
    ..define(
      "${RouteNameBuilder.accountSettingsResource}",
      transitionType: TransitionType.inFromRight,
      handler: Handler(
        handlerFunc: (context, params) => AccountSettings(),
      ),
    )
    ..define(
      "${RouteNameBuilder.sectionsResource}/:id",
      transitionType: TransitionType.inFromRight,
      handler: Handler(
        handlerFunc: (context, params) => SectionDetails(
          categoryId: params['id']![0],
          title: context!.settings!.arguments.toString(),
        ),
      ),
    )
    ..define(
      "${RouteNameBuilder.clinicResource}",
      transitionType: TransitionType.inFromRight,
      handler: Handler(
        handlerFunc: (context, params) => clinic_module.Clinic(
          clinic: context!.settings!.arguments as clinic_api.Clinic,
        ),
      ),
    )
    ..define(
      "${RouteNameBuilder.clinicResource}/bookAppointment",
      transitionType: TransitionType.inFromRight,
      handler: Handler(handlerFunc: (context, params) {
        final args = context!.settings!.arguments as BookAppointment;

        return BlocProvider(
          create: (context) => MakeAppointmentCubit(),
          child: BookAppointmentSetup(bookAppointment: args),
        );
      }),
    )
    ..define(
      "${RouteNameBuilder.clinicResource}/confirmAppointment",
      transitionType: TransitionType.inFromRight,
      handler: Handler(handlerFunc: (context, params) {
        final args = context!.settings!.arguments as ConfirmAppointmentDetail;

        return BlocProvider(
          create: (context) => BookAppointmentCubit(),
          child: ConfirmAppointment(confirmAppointmentDetail: args),
        );
      }),
    )
    ..define(
      RouteNameBuilder.updateProfilePhoto,
      transitionType: TransitionType.inFromRight,
      handler: Handler(
        handlerFunc: (context, params) {
          return BlocProvider(
              create: (_) => UpdateProfilePhotoBloc(
                    userApiClient: UserApiClient(),
                    imagePicker: ImagePickerBloc(),
                  ),
              child: UpdateProfileImage());
        },
      ),
    )
    ..define(
      RouteNameBuilder.updateDisplayName,
      transitionType: TransitionType.inFromRight,
      handler: Handler(
        handlerFunc: (context, params) {
          return BlocProvider(
              create: (_) => UpdateDisplayNameCubit(UserApiClient()),
              child: UpdateDisplayName());
        },
      ),
    )
    ..define(
      "${RouteNameBuilder.accountSettingsResource}/updateDisplayName",
      transitionType: TransitionType.inFromRight,
      handler: Handler(
        handlerFunc: (context, params) {
          return BlocProvider(
              create: (_) => UpdateDisplayNameCubit(UserApiClient()),
              child: EditAccountName());
        },
      ),
    )
    ..define(
      "${RouteNameBuilder.accountSettingsResource}/updatePhoto",
      transitionType: TransitionType.inFromRight,
      handler: Handler(
        handlerFunc: (context, params) {
          return BlocProvider(
              create: (_) => UpdateProfilePhotoBloc(
                    userApiClient: UserApiClient(),
                    imagePicker: ImagePickerBloc(),
                  ),
              child: EditProfileImage());
        },
      ),
    )
    ..define(
      RouteNameBuilder.viewallTopRatedClinics,
      transitionType: TransitionType.inFromRight,
      handler: Handler(
        handlerFunc: (context, params) {
          return TopRatedClinicViewAll();
        },
      ),
    )
    ..define(
      RouteNameBuilder.viewallNearbyClinics,
      transitionType: TransitionType.inFromRight,
      handler: Handler(
        handlerFunc: (context, params) {
          return NearbyClinicViewall();
        },
      ),
    )
    ..define(
      "${RouteNameBuilder.addReviewResource}",
      handler: Handler(
        handlerFunc: (context, params) {
          return BlocProvider(
            create: (context) =>
                clinic_module.ReviewAddCubit(clinic_api.ReviewsApiClient()),
            child: clinic_module.AddReview(
                clinic: context!.settings!.arguments as clinic_api.Clinic),
          );
        },
      ),
    );
}
