import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/auth/widgets/widgets.dart';

import '../../../../config/router/route_name_builder.dart';
import '../../../../core/utils/common.dart';
import '../../../../core/utils/toast/toast.dart';
import '../../bloc/update_profile_photo/update_profile_photo_bloc.dart';

class UpdateProfileImage extends StatelessWidget {
  const UpdateProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [_ActionBtn()],
      ),
      body: BlocListener<UpdateProfilePhotoBloc, UpdateProfilePhotoState>(
        listener: (context, state) {
          if (state is UpdateSuccess) {
            Navigator.of(context).pushNamed(RouteNameBuilder.tabsResource);
          }
          if (state is UpdateFailure) {
            Toast.showToast("Failt to update.");
          }
          if (state is SelectedPhoto) {
            Navigator.pop(context);
          }
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Spacer(flex: 2),
              Spaces().meduimSpace(),
              _TitleAndSubtitle(),
              Spaces().highSpace(),
              ChoosePhotoWidget(),
              Spacer(flex: 8),
            ],
          ),
        ),
      ),
    );
  }
}

class _ActionBtn extends StatelessWidget {
  const _ActionBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfilePhotoBloc, UpdateProfilePhotoState>(
      builder: (context, state) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            if (state is Initial) {
              Navigator.of(context).pushNamed(RouteNameBuilder.tabsResource);
            } else if (state is SelectedPhoto) {
              context
                  .read<UpdateProfilePhotoBloc>()
                  .add(UpdateUserPhoto(state.photo));
            }
          },
          child: SizedBox(
            width: 60.0,
            child: Center(
              child: state is UpdateInProgress
                  ? Common.buildBtnLoader()
                  : Text(
                      state is Initial ? "Skip" : "Next",
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

class _TitleAndSubtitle extends StatelessWidget {
  const _TitleAndSubtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Add your profile photo",
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontWeight: FontWeight.w700),
        ),
        Spaces().smallSpace(),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Text(
            "To make it easier for others to recognize you and trust you",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black.withOpacity(0.6)),
          ),
        ),
      ],
    );
  }
}
