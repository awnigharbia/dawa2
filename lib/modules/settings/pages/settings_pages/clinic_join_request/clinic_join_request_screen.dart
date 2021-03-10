import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/toast/toast.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:formz/formz.dart';
import '../../../settings.dart';

class ClinicJoinScreen extends StatelessWidget {
  const ClinicJoinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getCustomAppBar(
        title: "Add your clinic",
        context: context,
        centerTitle: false,
        isDefaultBack: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spaces().highSpace(),
              _Title(),
              Spaces().highSpace(),
              _NameInput(),
              Spaces().meduimSpace(),
              _OwnerNameInput(),
              Spaces().meduimSpace(),
              _ContactNumberInput(),
              Spaces().meduimSpace(),
              _SubmitBtn(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SubmitBtn extends StatelessWidget {
  const _SubmitBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClinicJoinCubit, ClinicJoinState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          Toast.showToast("Join Request sent.");
        }
      },
      buildWhen: (prev, curr) => prev.status != curr.status,
      builder: (context, state) {
        return Submit(
          onSubmit: state.status.isInvalid ||
                  state.status.isSubmissionInProgress
              ? null
              : () async => await context.read<ClinicJoinCubit>().joinClinic(),
          isSubmit: state.status.isSubmissionInProgress,
          name: "Join",
        );
      },
    );
  }
}

class _ContactNumberInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClinicJoinCubit, ClinicJoinState>(
      buildWhen: (prev, curr) => prev.contactOwner != curr.contactOwner,
      builder: (context, state) {
        return ShadowWrapper(
          width: MediaQuery.of(context).size.width * 0.9,
          child: TextField(
            onChanged: context.read<ClinicJoinCubit>().onContactNumber,
            keyboardType: TextInputType.number,
            decoration: textFieldDecoration(context: context)
                .copyWith(hintText: "Contact number"),
          ),
        );
      },
    );
  }
}

class _OwnerNameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClinicJoinCubit, ClinicJoinState>(
      buildWhen: (prev, curr) => prev.clinicOwner != curr.clinicOwner,
      builder: (context, state) {
        return ShadowWrapper(
          width: MediaQuery.of(context).size.width * 0.9,
          child: TextField(
            onChanged: context.read<ClinicJoinCubit>().onClinicOwner,
            decoration: textFieldDecoration(context: context)
                .copyWith(hintText: "Owner name"),
          ),
        );
      },
    );
  }
}

class _NameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClinicJoinCubit, ClinicJoinState>(
      buildWhen: (prev, curr) => prev.clinicName != curr.clinicName,
      builder: (context, state) {
        return ShadowWrapper(
          width: MediaQuery.of(context).size.width * 0.9,
          child: TextField(
            onChanged: context.read<ClinicJoinCubit>().onClinicName,
            decoration: textFieldDecoration(context: context)
                .copyWith(hintText: "Clinic name"),
          ),
        );
      },
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Text(
        Localization.of(context)!.tr("clinicJoinText")!,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
