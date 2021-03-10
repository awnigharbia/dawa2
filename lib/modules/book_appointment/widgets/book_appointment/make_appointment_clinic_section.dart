import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/clinic/clinic.dart';

class MakeAppointmentSectionTitle extends StatelessWidget {
  final String? title;

  const MakeAppointmentSectionTitle({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title!,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.8)),
      ),
    );
  }
}

class MakeAppointmentClinicSection extends StatelessWidget {
  const MakeAppointmentClinicSection({
    Key? key,
    this.bookAppointment,
  }) : super(key: key);

  final BookAppointment? bookAppointment;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [MakeAppointmentSectionTitle(title: "Clinic")],
        ),
        Spaces().meduimSpace(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 3,
                  )
                ]),
            child: Row(
              children: [
                CirceledCachedImage(
                    imgUrl: bookAppointment!.clinic!.imgUrl, size: 0.15),
                Spaces().smallHorozintolSpace(),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              bookAppointment!.clinic!.name!,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(EvaIcons.star, size: 15, color: Colors.grey),
                              SizedBox(width: 3.0),
                              Text(
                                bookAppointment!.clinic!.rate.toString(),
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                          Spaces().smallHorozintolSpace(),
                          Flexible(
                            child: Row(
                              children: [
                                Icon(EvaIcons.pin,
                                    size: 15, color: Colors.grey),
                                SizedBox(width: 3.0),
                                Flexible(
                                  child: Text(
                                    bookAppointment!.clinic!.location!,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
