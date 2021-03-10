import 'package:flutter/material.dart';

import 'package:dawa2/core/utils/utils.dart';

class SettingsWidget extends StatelessWidget {
  final Widget? leading;
  final String? title;
  final VoidCallback? onTap;

  const SettingsWidget({
    Key? key,
    this.leading,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.05),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                leading!,
                Spaces().smallHorozintolSpace(),
                Text(
                  title ?? "",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 15.0),
                ),
              ],
            ),
            Icon(LocaleIcon.listArrow(context)),
          ],
        ),
      ),
    );
  }
}
