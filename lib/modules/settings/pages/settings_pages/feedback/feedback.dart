import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/toast/toast.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:formz/formz.dart';
import '../../../settings.dart';

class FeedbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getCustomAppBar(
        title: Localization.of(context)?.tr("feedback"),
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
              _TitleInput(),
              Spaces().meduimSpace(),
              _MessageInput(),
              Spaces().meduimSpace(),
              _SubmitBtn(),
              Spaces().meduimSpace(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SubmitBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeedbackCubit, FeedbackState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          Toast.showToast(Localization.of(context)!.tr("joinRequestSent")!);
        }
      },
      builder: (context, state) {
        return Submit(
          onSubmit: state.status.isInvalid
              ? null
              : () async => await context.read<FeedbackCubit>().sendFeedback(),
          isSubmit: state.status.isSubmissionInProgress,
        );
      },
    );
  }
}

class _MessageInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedbackCubit, FeedbackState>(
      buildWhen: (prev, curr) => prev.feedbackMessage != curr.feedbackMessage,
      builder: (context, state) {
        return ShadowWrapper(
          width: MediaQuery.of(context).size.width * 0.9,
          radius: 5.0,
          child: TextField(
            maxLines: 5,
            onChanged: context.read<FeedbackCubit>().onMessageChanges,
            decoration: textFieldDecoration(
              context: context,
            ).copyWith(hintText: Localization.of(context)!.tr("message")),
          ),
        );
      },
    );
  }
}

class _TitleInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedbackCubit, FeedbackState>(
      buildWhen: (prev, curr) => prev.feedbackTitle != curr.feedbackTitle,
      builder: (context, state) {
        return ShadowWrapper(
          width: MediaQuery.of(context).size.width * 0.9,
          radius: 5.0,
          child: TextField(
            onChanged: context.read<FeedbackCubit>().onTitleChanges,
            decoration: textFieldDecoration(
              context: context,
            ).copyWith(hintText: Localization.of(context)!.tr("title")),
          ),
        );
      },
    );
  }
}
