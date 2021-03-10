import 'package:flutter/material.dart';
import 'package:dawa2/core/utils/common.dart';
import 'package:dawa2/localization/doctor_pet_localization.dart';

import 'color.dart';

class Submit extends StatelessWidget {
  const Submit({
    Key? key,
    @required this.onSubmit,
    @required this.isSubmit,
    this.name,
    this.color,
    this.disabledColor,
  }) : super(key: key);

  final String? name;
  final VoidCallback? onSubmit;
  final bool? isSubmit;

  final Color? color;
  final Color? disabledColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: FlatButton(
        height: 40.0,
        disabledColor: disabledColor ?? ColorSchema.disabledbtn,
        disabledTextColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        color: color ?? ColorSchema.green,
        onPressed: isSubmit == null ? null : onSubmit,
        child: isSubmit == null ? Common.buildBtnLoader() : buildText(context),
      ),
    );
  }

  Text buildText(BuildContext context) {
    return Text(
      (name ?? Localization.of(context)!.tr("send"))!,
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
