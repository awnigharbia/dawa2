import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/auth/bloc/update_profile_photo/update_profile_photo_bloc.dart';

import '../widgets.dart';

class ChoosePhotoWidget extends StatefulWidget {
  const ChoosePhotoWidget({
    Key? key,
  }) : super(key: key);

  @override
  _ChoosePhotoWidgetState createState() => _ChoosePhotoWidgetState();
}

class _ChoosePhotoWidgetState extends State<ChoosePhotoWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        getCustomModal(
          context: context,
          rootNavigator: false,
          child: BlocProvider.value(
            value: BlocProvider.of<UpdateProfilePhotoBloc>(context),
            child: ChoosePhotoOptionModal(),
          ),
        );
      },
      child: BlocBuilder<UpdateProfilePhotoBloc, UpdateProfilePhotoState>(
        buildWhen: (prev, curr) {
          return (prev is SelectedPhoto || prev is Initial) ==
              (curr is SelectedPhoto);
        },
        builder: (context, state) {
          return Column(
            children: [
              if (state is SelectedPhoto) _selectedImage(state.photo),
              if (state is Initial)
                CirceledCachedImage(
                  imgUrl: "https://i.ibb.co/DrRQTqd/user-placeholder.png",
                  size: 0.25,
                ),
              Spaces().meduimSpace(),
              state is SelectedPhoto
                  ? Text(Localization.of(context)!.tr("changePhoto")!,
                      style: TextStyle(fontWeight: FontWeight.w600))
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add),
                        Spaces().smallHorozintolSpace(),
                        Text(
                          Localization.of(context)!.tr("changePhotoBtn")!,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
            ],
          );
        },
      ),
    );
  }

  OrientationUtil _selectedImage(image) => OrientationUtil(
        builder: (context, size) {
          return Container(
            width: size!.width * 0.25,
            height: size.width * 0.25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(size.width * 0.25),
              child: Image.file(
                image,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      );
}
