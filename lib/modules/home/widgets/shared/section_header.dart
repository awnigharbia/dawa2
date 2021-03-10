import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';
import 'package:dawa2/core/utils/utils.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    @required this.title,
    this.subTitle,
    this.onViewAll,
  }) : super(key: key);

  final String? title;
  final String? subTitle;
  final Function()? onViewAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? "",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                subTitle != null ? Spaces().smallSpace() : SizedBox.shrink(),
                subTitle != null
                    ? Text(
                        subTitle!,
                        style: TextStyle(color: Colors.grey),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
          GestureDetector(
            onTap: onViewAll,
            behavior: HitTestBehavior.translucent,
            child: Text(
              Localization.of(context)!.tr("viewall")!,
              style: TextStyle(
                  color: ColorSchema.green, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
