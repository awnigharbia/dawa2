import 'package:clinic_api/clinic_api.dart';
import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:dawa2/core/utils/utils.dart';

class WorkHoursWithDescription extends StatelessWidget {
  final Clinic? clinic;
  const WorkHoursWithDescription({
    Key? key,
    this.clinic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final startTimeFormat = DateFormat("ha").format(clinic!.openTime!);
    final closeTimeFormat = DateFormat("ha").format(clinic!.closeTime!);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(EvaIcons.clockOutline,
                color: Colors.black.withOpacity(0.6), size: 20),
            Spaces().smallHorozintolSpace(),
            RichText(
              text: TextSpan(
                  text:
                      "${Localization.of(context)!.tr(clinic?.isOpen ?? false ? "open" : "closed")} ",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: clinic!.isOpen! ? ColorSchema.green : Colors.red,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: "($startTimeFormat-$closeTimeFormat)",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.black.withOpacity(0.7)))
                  ]),
            )
          ],
        ),
        Spaces().smallSpace(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(EvaIcons.pinOutline,
                color: Colors.black.withOpacity(0.6), size: 20),
            Spaces().smallHorozintolSpace(),
            Text(
              clinic!.location ?? "",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.black.withOpacity(0.7)),
            )
          ],
        ),
        Spaces().smallSpace(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(EvaIcons.phoneOutline,
                color: Colors.black.withOpacity(0.6), size: 20),
            Spaces().smallHorozintolSpace(),
            Text(
              clinic!.phone!.replaceAllMapped(RegExp(r'(\d{3})(\d{3})(\d+)'),
                  (Match m) => "${m[1]} ${m[2]}-${m[3]}"),
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.blue, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Spaces().highSpace(),
        Text(
          clinic!.description ?? "",
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: Colors.black.withOpacity(0.7), height: 1.8),
          maxLines: 4,
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
