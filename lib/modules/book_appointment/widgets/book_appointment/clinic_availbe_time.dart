import 'package:clinic_api/clinic_api.dart' as clinic_api;
import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class ClinicAvailableTime extends StatefulWidget {
  final clinic_api.Clinic? clinic;
  const ClinicAvailableTime({
    Key? key,
    this.clinic,
  }) : super(key: key);

  @override
  __ClinicAvailableTimeState createState() => __ClinicAvailableTimeState();
}

class __ClinicAvailableTimeState extends State<ClinicAvailableTime> {
  List<TimeOfDay> morningHours = [];
  List<TimeOfDay> dayHours = [];
  List<TimeOfDay> eveningHours = [];

  @override
  void initState() {
    super.initState();
    getMorningTime();
  }

  void getMorningTime() {
    var openHour = TimeOfDay.fromDateTime(widget.clinic!.openTime!).hour;
    var closeHour = TimeOfDay.fromDateTime(widget.clinic!.closeTime!).hour;

    for (int i = openHour; i < closeHour; i++) {
      if (i >= 8 && i < 12) {
        var timeOfDay = TimeOfDay.fromDateTime(DateTime(1990, 1, 1, i));
        morningHours.add(timeOfDay);
      }
      if (i >= 12 && i <= 18) {
        var timeOfDay = TimeOfDay.fromDateTime(DateTime(1990, 1, 1, i));
        dayHours.add(timeOfDay);
      }
      if (i > 18 && i <= 22) {
        var timeOfDay = TimeOfDay.fromDateTime(DateTime(1990, 1, 1, i));
        eveningHours.add(timeOfDay);
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        morningHours.isNotEmpty
            ? ClinicTimeSection(
                title: Localization.of(context)!.tr("morning")!,
                timeList: morningHours,
              )
            : SizedBox.shrink(),
        dayHours.isNotEmpty
            ? ClinicTimeSection(
                title: Localization.of(context)!.tr("day")!,
                timeList: dayHours,
              )
            : SizedBox.shrink(),
        eveningHours.isNotEmpty
            ? ClinicTimeSection(
                title: Localization.of(context)!.tr("evening")!,
                timeList: eveningHours,
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
