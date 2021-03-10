import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:dawa2/config/router/route_name_builder.dart';
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
          icon: Icon(EvaIcons.arrowBackOutline),
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
          Toast.showToast("Cannot edit name.");
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
          "Edit Your Name",
          style: Theme.of(context).textTheme.headline6,
        ),
        Spaces().smallSpace(),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Text(
            "Where others can see your name when you rate clinics.",
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
              hintText: "Your name",
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
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: state.status.isPure || state.status.isSubmissionInProgress
              ? null
              : () async {
                  await context
                      .read<UpdateDisplayNameCubit>()
                      .updateDisplayName();
                },
          child: SizedBox(
            width: 60.0,
            child: Center(
              child: state.status.isSubmissionInProgress
                  ? Common.buildBtnLoader()
                  : Text(
                      "Save",
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
