import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/config/router/route_name_builder.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:dawa2/modules/auth/auth.dart';
import 'package:dawa2/modules/settings/widgets/more_item.dart';

import '../settings.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          slivers: [
            TopHeader(),
            SliverFillRemaining(
              child: ListView(
                children: [
                  StreamBuilder(
                    stream: context.read<AuthenticationBloc>().user,
                    builder: (context, AsyncSnapshot snapshot) => snapshot
                            .hasData
                        ? Column(
                            children: [
                              Spaces().meduimSpace(),
                              CirceledCachedImage(
                                  imgUrl: snapshot.data.photo, size: 0.3),
                              Spaces().meduimSpace(),
                              Text(snapshot.data.name,
                                  style: Theme.of(context).textTheme.subtitle1),
                            ],
                          )
                        : SizedBox.shrink(),
                  ),
                  Spaces().highSpace(),
                  SettingsWidget(
                    leading:
                        Icon(EvaIcons.personOutline, color: ColorSchema.green),
                    title: Localization.of(context)!.tr("accountSettings")!,
                    onTap: () => FluroRouter.appRouter.navigateTo(
                        context, RouteNameBuilder.accountSettingsResource),
                  ),
                  Spaces().smallSpace(),
                  SettingsWidget(
                    leading: Icon(EvaIcons.plusCircleOutline,
                        color: ColorSchema.green),
                    title: Localization.of(context)!.tr("clinicJoin")!,
                    onTap: () => FluroRouter.appRouter
                        .navigateTo(context, RouteNameBuilder.clinicJoin()),
                  ),
                  Spaces().smallSpace(),
                  SettingsWidget(
                    leading:
                        Icon(EvaIcons.globeOutline, color: ColorSchema.green),
                    title: Localization.of(context)!.tr("language")!,
                    onTap: () => FluroRouter.appRouter
                        .navigateTo(context, RouteNameBuilder.language()),
                  ),
                  Spaces().smallSpace(),
                  SettingsWidget(
                    leading: Icon(EvaIcons.messageSquareOutline,
                        color: ColorSchema.green),
                    title: Localization.of(context)!.tr("feedback")!,
                    onTap: () => FluroRouter.appRouter
                        .navigateTo(context, RouteNameBuilder.callUs()),
                  ),
                  Spaces().smallSpace(),
                  SettingsWidget(
                      leading:
                          Icon(EvaIcons.infoOutline, color: ColorSchema.green),
                      title: Localization.of(context)!.tr("about")!,
                      onTap: () => FluroRouter.appRouter
                          .navigateTo(context, RouteNameBuilder.aboutUs())),
                  Spaces().smallSpace(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
