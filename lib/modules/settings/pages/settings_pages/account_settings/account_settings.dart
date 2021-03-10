import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:dawa2/config/router/route_name_builder.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/settings/widgets/more_item.dart';

class AccountSettings extends StatefulWidget {
  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getCustomAppBar(
        context: context,
        title: Localization.of(context)!.tr("accountSettings")!,
        isDefaultBack: true,
        centerTitle: false,
      ),
      body: Column(
        children: [
          Spaces().highSpace(),
          SettingsWidget(
            leading: Icon(Icons.camera_alt_outlined, color: ColorSchema.green),
            title: Localization.of(context)!.tr("changePhoto")!,
            onTap: () => FluroRouter.appRouter.navigateTo(
                context, RouteNameBuilder.accountSettingsUpdatePhoto()),
          ),
          Spaces().smallSpace(),
          SettingsWidget(
            leading: Icon(EvaIcons.edit2Outline, color: ColorSchema.green),
            title: Localization.of(context)!.tr("updateDisplayName")!,
            onTap: () => FluroRouter.appRouter.navigateTo(
                context, RouteNameBuilder.accountSettingsUpdateDisplayName()),
          ),
          Spaces().smallSpace(),
        ],
      ),
    );
  }
}
