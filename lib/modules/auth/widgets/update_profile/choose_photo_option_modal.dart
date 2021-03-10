import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/auth/bloc/update_profile_photo/update_profile_photo_bloc.dart';

class ChoosePhotoOptionModal extends StatelessWidget {
  const ChoosePhotoOptionModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.15,
              height: 5.0,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.8),
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
          Spaces().highSpace(),
          Text(
            "Add your profile photo",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          Spaces().highSpace(),
          _choosePhotoOption(
            context,
            icon: Icons.image,
            text: "Upload from gallery",
            onTap: () {
              context
                  .read<UpdateProfilePhotoBloc>()
                  .add(ChoosePhotoFromGallery());
            },
          ),
          Spaces().smallSpace(),
          Divider(
            thickness: 0.5,
          ),
          Spaces().smallSpace(),
          _choosePhotoOption(
            context,
            icon: Icons.camera_alt,
            text: "Take a photo",
            onTap: () {
              context
                  .read<UpdateProfilePhotoBloc>()
                  .add(ChoosePhotoFromCamera());
            },
          ),
          Spaces().meduimSpace(),
        ],
      ),
    );
  }

  GestureDetector _choosePhotoOption(context, {icon, text, onTap}) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, color: Colors.black.withOpacity(0.7)),
          Spaces().smallHorozintolSpace(),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
