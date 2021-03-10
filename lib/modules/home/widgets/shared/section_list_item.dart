import 'package:clinic_api/clinic_api.dart';
import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';

import 'package:dawa2/core/utils/utils.dart';

class SectionListItem extends StatelessWidget {
  final Clinic? clinic;
  const SectionListItem({
    Key? key,
    this.clinic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: CirceledCachedImage(
            imgUrl: clinic!.imgUrl,
            size: 1,
            radius: 0.0,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.white.withOpacity(0.0)
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.center,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                clinic!.name!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Spaces().smallSpace(),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 18.0,
                    color: Colors.yellow[800],
                  ),
                  Spaces().smallHorozintolSpace(),
                  Text(
                    "${clinic!.rate} . ${clinic!.distance!.toInt()} ${Localization.of(context)!.tr("km")}",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white.withOpacity(0.6)),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
