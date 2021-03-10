import 'package:authentication_api/authentication_api.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dawa2/core/utils/orientation_util.dart';
import 'package:dawa2/core/utils/toast/toast.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:dawa2/modules/auth/bloc/login/login_cubit.dart';
import 'package:dawa2/modules/auth/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(context.read<AuthenticationApiClient>()),
      child: LoginForm(),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          Toast.showToast("Authentication faild");
        }
      },
      child: Scaffold(
        appBar: getCustomAppBar(
          context: context,
          isDefaultBack: true,
          removeBackgroundColor: true,
        ),
        backgroundColor: ColorSchema.scaffoldbackground,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spaces().smallSpace(),
              _Title(),
              Spaces().highSpace(),
              Spaces().meduimSpace(),
              _PhoneInput(),
              Spaces().meduimSpace(),
              _LoginButton(),
              Spaces().meduimSpace(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Localization.of(context)!.tr("loginFormTitle")!,
          style: GoogleFonts.dosis(fontSize: 18, fontWeight: FontWeight.normal),
        ),
        Spaces().smallSpace(),
        OrientationUtil(
          builder: (context, size) => SizedBox(
            width: size!.width * 0.8,
            child: Text(
              Localization.of(context!)!.tr("loginFormSubtitle")!,
              style:
                  GoogleFonts.dosis(fontWeight: FontWeight.w700, fontSize: 32),
            ),
          ),
        ),
      ],
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return Submit(
          name: Localization.of(context)!.tr("loginBtn")!,
          color: ColorSchema.green,
          disabledColor: Colors.grey.withOpacity(0.35),
          onSubmit: state.status.isValidated
              ? () => context.read<LoginCubit>().verifyPhoneNumber(context)
              : null,
          isSubmit: state.status.isSubmissionInProgress,
        );
      },
    );
  }
}

class _PhoneInput extends StatelessWidget {
  const _PhoneInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.phone != current.phone,
      builder: (context, state) {
        return ShadowWrapper(
          radius: 3.0,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Row(
            children: [
              _CountryPrefix(),
              Expanded(
                child: TextField(
                  inputFormatters: [
                    MaskedTextInputFormatter(
                        mask: "000 000 00 00", separator: " ")
                  ],
                  autocorrect: false,
                  keyboardType: TextInputType.number,
                  onChanged: (phone) =>
                      context.read<LoginCubit>().phoneChanged(phone),
                  decoration: textFieldDecoration(
                    context: context,
                  ).copyWith(
                    hintText: "(000) 000 00 00",
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _CountryPrefix extends StatelessWidget {
  const _CountryPrefix({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (prev, current) => prev.phoneCode != current.phoneCode,
      builder: (_, state) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => showDialog(
            context: context,
            builder: (_) => Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.pink),
                child: CountryPickerDialog(
                    titlePadding: EdgeInsets.all(8.0),
                    searchCursorColor: Colors.pinkAccent,
                    searchInputDecoration:
                        InputDecoration(hintText: 'Search...'),
                    isSearchable: true,
                    title: Text('Select your phone code'),
                    onValuePicked: (Country country) =>
                        context.read<LoginCubit>().prefixChanged(country),
                    priorityList: [
                      CountryPickerUtils.getCountryByIsoCode('TR'),
                      CountryPickerUtils.getCountryByIsoCode('US'),
                    ],
                    itemBuilder: _buildDropdownItem)),
          ),
          child: _buildSelectedCountry(state.phoneCode),
        );
      },
    );
  }

  Widget _buildDropdownItem(Country country) => Container(
        width: 100,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 8.0,
            ),
            Flexible(child: Text("${country.name}")),
          ],
        ),
      );

  Widget _buildSelectedCountry(String phoneCode) {
    Country country = CountryPickerUtils.getCountryByPhoneCode(phoneCode);
    return IntrinsicHeight(
      child: Row(
        children: [
          Spaces().smallHorozintolSpace(),
          CountryPickerUtils.getDefaultFlagImage(
            country,
          ),
          Icon(Icons.keyboard_arrow_down_rounded, size: 20),
          VerticalDivider(
            width: 5,
            thickness: 1,
          ),
          Spaces().smallHorozintolSpace(),
          Text("+ ${country.phoneCode}"),
          Spaces().meduimHorozintolSpace(),
        ],
      ),
    );
  }
}
