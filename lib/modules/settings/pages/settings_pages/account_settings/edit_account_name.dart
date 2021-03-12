import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:dawa2/core/utils/common.dart';
import 'package:dawa2/core/utils/toast/toast.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/auth/bloc/update_display_name/update_display_name_cubit.dart';

class EditAccountName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(LocaleIcon.backArrow(context)),
        ),
        actions: [
          _NextBtn(),
        ],
      ),
      body: EditAccountNameForm(),
    );
  }
}

class EditAccountNameForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateDisplayNameCubit, UpdateDisplayNameState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          Navigator.pop(context);
        }
        if (state.status.isSubmissionFailure) {
          Toast.showToast(Localization.of(context)!.tr("faildToUpdate")!);
        }
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spaces().highSpace(),
            _TopHeader(),
            Spaces().highSpace(),
            Spaces().highSpace(),
            _NameInput(),
          ],
        ),
      ),
    );
  }
}

class _TopHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Localization.of(context)!.tr("editNameTitle")!,
          style: Theme.of(context).textTheme.headline6,
        ),
        Spaces().smallSpace(),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Text(
            Localization.of(context)!.tr("editNameSubtitle")!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}

class _NameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateDisplayNameCubit, UpdateDisplayNameState>(
      buildWhen: (prev, cur) => prev.displayName != cur.displayName,
      builder: (context, state) {
        return ShadowWrapper(
          radius: 3.0,
          width: MediaQuery.of(context).size.width * 0.9,
          child: TextField(
            autocorrect: false,
            autofocus: true,
            keyboardType: TextInputType.text,
            onChanged: context.read<UpdateDisplayNameCubit>().nameChanged,
            decoration: textFieldDecoration(
              context: context,
            ).copyWith(
              hintText: Localization.of(context)?.tr("yourName"),
              contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
            ),
          ),
        );
      },
    );
  }
}

class _NextBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateDisplayNameCubit, UpdateDisplayNameState>(
      buildWhen: (prev, cur) => prev.status != cur.status,
      builder: (context, state) {
        final cubit = context.read<UpdateDisplayNameCubit>();
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: context.read<UpdateDisplayNameCubit>().isBtnValid()!
              ? () async {
                  await cubit.updateDisplayName();
                }
              : null,
          child: SizedBox(
            width: 60.0,
            child: Center(
              child: state.status.isSubmissionInProgress
                  ? Common.buildBtnLoader()
                  : Text(
                      Localization.of(context)!.tr("save")!,
                      style: TextStyle(
                          color: ColorSchema.green,
                          fontWeight: FontWeight.w600),
                    ),
            ),
          ),
        );
      },
    );
  }
}
