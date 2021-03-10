import 'package:authentication_api/authentication_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:dawa2/core/utils/toast/toast.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/auth/bloc/sms_code/sms_code_cubit.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:provider/provider.dart';

class SmsCodeScreen extends StatelessWidget {
  final String? verificationId;
  final int? resendToken;
  final String? phoneNo;

  const SmsCodeScreen({
    Key? key,
    @required this.verificationId,
    @required this.resendToken,
    @required this.phoneNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SmsCodeCubit(context.read<AuthenticationApiClient>()),
      child: SmsCodeForm(
          verificationId: verificationId!,
          resendToken: resendToken!,
          phoneNo: phoneNo!),
    );
  }
}

class SmsCodeForm extends StatelessWidget {
  const SmsCodeForm({
    Key? key,
    @required this.verificationId,
    @required this.resendToken,
    @required this.phoneNo,
  }) : super(key: key);

  final String? phoneNo;
  final String? verificationId;
  final int? resendToken;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SmsCodeCubit, SmsCodeState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          Toast.showToast("Sms code invalid");
        }
      },
      child: Scaffold(
        appBar: getCustomAppBar(
          context: context,
          isDefaultBack: true,
          removeBackgroundColor: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spaces().smallSpace(),
                _Title(phoneNo: phoneNo!),
                Spaces().highSpace(),
                _SmsCodeInput(
                    verificationId: verificationId!, resendToken: resendToken!),
                Spaces().highSpace(),
                Spaces().highSpace(),
                _SubmitButton(
                    verificationId: verificationId!, resendToken: resendToken!),
                Spaces().meduimSpace(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
    @required this.phoneNo,
  }) : super(key: key);

  final String? phoneNo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "verification",
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(fontSize: 16, color: Colors.black.withOpacity(0.7)),
        ),
        Spaces().smallSpace(),
        OrientationUtil(
          builder: (context, size) => SizedBox(
            width: size!.width * 0.9,
            child: Text(
              "We sent you an sms code",
              style: Theme.of(context!).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
        Spaces().smallSpace(),
        RichText(
          text: TextSpan(
            text: "On number: ",
            style: Theme.of(context).textTheme.bodyText1,
            children: [
              TextSpan(
                  text:
                      "+${phoneNo!.substring(0, 3)} (${phoneNo!.substring(3, 6)}) ${phoneNo!.substring(6, 9)} ${phoneNo!.substring(9, 13)}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: ColorSchema.green)),
            ],
          ),
        )
      ],
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({
    Key? key,
    @required this.verificationId,
    @required this.resendToken,
  }) : super(key: key);

  final String? verificationId;
  final int? resendToken;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SmsCodeCubit, SmsCodeState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return Submit(
          onSubmit: state.status.isValidated
              ? () => context
                  .read<SmsCodeCubit>()
                  .logInWithSmsCode(verificationId!, resendToken!)
              : null,
          isSubmit: state.status.isSubmissionInProgress,
        );
      },
    );
  }
}

class _SmsCodeInput extends StatelessWidget {
  const _SmsCodeInput({
    Key? key,
    @required this.verificationId,
    @required this.resendToken,
  }) : super(key: key);

  final String? verificationId;
  final int? resendToken;

  @override
  Widget build(BuildContext context) {
    final BoxDecoration pinPutDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: ColorSchema.green.withOpacity(0.1),
          offset: Offset(
            0.0,
            0.0,
          ),
          blurRadius: 20.0,
        )
      ],
    );
    return BlocBuilder<SmsCodeCubit, SmsCodeState>(
      builder: (context, state) {
        final cubit = context.read<SmsCodeCubit>();
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: PinPut(
            autofocus: true,
            fieldsCount: cubit.pinLength,
            onChanged: (smsCode) => cubit.smsCodeChanged(smsCode),
            pinAnimationType: PinAnimationType.scale,
            submittedFieldDecoration: pinPutDecoration,
            selectedFieldDecoration: pinPutDecoration,
            followingFieldDecoration: pinPutDecoration,
            textStyle: TextStyle(fontSize: 20.0),
            eachFieldConstraints: BoxConstraints(minHeight: 50, minWidth: 45),
          ),
        );
      },
    );
  }
}
