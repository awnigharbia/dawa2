import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/common.dart';
import 'package:dawa2/core/utils/toast/toast.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/auth/auth.dart';
import 'package:dawa2/modules/auth/widgets/widgets.dart';

class EditProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(EvaIcons.arrowBackOutline),
        ),
        elevation: 0.0,
        actions: [_ActionBtn()],
      ),
      body: BlocListener<UpdateProfilePhotoBloc, UpdateProfilePhotoState>(
        listener: (context, state) {
          if (state is UpdateSuccess) {
            Navigator.pop(context);
          }
          if (state is UpdateFailure) {
            Toast.showToast(Localization.of(context)!.tr("faildToUpdate")!);
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
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfilePhotoBloc, UpdateProfilePhotoState>(
      builder: (context, state) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            if (state is SelectedPhoto) {
              context
                  .read<UpdateProfilePhotoBloc>()
                  .add(UpdateUserPhoto(state.photo));
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              width: 60.0,
              child: Center(
                child: state is UpdateInProgress
                    ? Common.buildBtnLoader()
                    : Text(
                        Localization.of(context)!.tr("change")!,
                        style: TextStyle(
                            color: ColorSchema.green,
                            fontWeight: FontWeight.w600),
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _TitleAndSubtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Localization.of(context)!.tr("changePhotoTitle")!,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontWeight: FontWeight.w700),
        ),
        Spaces().smallSpace(),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Text(
            Localization.of(context)!.tr("changePhotoSubtitle")!,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black.withOpacity(0.6)),
          ),
        ),
      ],
    );
  }
}
