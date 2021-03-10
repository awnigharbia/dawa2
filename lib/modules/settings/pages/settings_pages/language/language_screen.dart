import 'package:flutter/material.dart';
import 'package:dawa2/core/enum/languages.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/localization/doctor_pet_localization.dart';

import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../main.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  FormGroup buildForm() => fb.group(
        {
          'language': FormControl<Languages>(
            value: Localization.of(context)!.getCurrentDirection() == 'rtl'
                ? Languages.Arabic
                : Languages.English,
            validators: [
              Validators.required,
            ],
          ),
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getCustomAppBar(
        title: Localization.of(context)!.tr("language"),
        context: context,
        centerTitle: false,
        isDefaultBack: true,
      ),
      body: ReactiveFormBuilder(
        form: buildForm,
        builder: (context, form, child) {
          return Column(
            children: [
              Spaces().smallSpace(),
              ListTile(
                onTap: () {
                  form.updateValue({"language": Languages.Arabic});
                  MyApp.setLocale(context, Locale('ar', 'SA'));
                },
                leading: Image.asset("assets/saudi-arabia.png"),
                title: Text("العربية"),
                trailing: ReactiveRadio(
                  value: Languages.Arabic,
                  formControlName: "language",
                ),
              ),
              Spaces().smallSpace(),
              ListTile(
                onTap: () {
                  form.updateValue({"language": Languages.English});
                  MyApp.setLocale(context, Locale('en', 'US'));
                },
                leading: Image.asset("assets/united-states.png"),
                title: Text("English"),
                trailing: ReactiveRadio(
                  value: Languages.English,
                  formControlName: "language",
                ),
              ),
              Spaces().meduimSpace(),
            ],
          );
        },
      ),
    );
  }
}
