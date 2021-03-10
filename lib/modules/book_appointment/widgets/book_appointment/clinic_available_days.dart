import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../book_appointment.dart';

class ClinicAvailableDays extends StatefulWidget {
  const ClinicAvailableDays({
    Key? key,
  }) : super(key: key);

  @override
  __ClinicAvailableDaysState createState() => __ClinicAvailableDaysState();
}

class __ClinicAvailableDaysState extends State<ClinicAvailableDays> {
  List<DateTime> nextWeek = [];

  @override
  void initState() {
    super.initState();
    getNextWeek();
  }

  void getNextWeek() {
    List<DateTime> nextWeekDays = [];
    int nextDays = 7;
    int friday = 5;
    var now = DateTime.now();

    for (int i = 0; i < nextDays; i++) {
      var day = now.add(Duration(days: i));
      if (day.weekday == friday) continue;

      nextWeekDays.add(day);
    }

    setState(() {
      nextWeek = nextWeekDays;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MakeAppointmentCubit, MakeAppointmentState>(
      buildWhen: (prev, curr) => prev.appointmentDate != curr.appointmentDate,
      builder: (context, state) {
        return OrientationUtil(
          builder: (context, size) => SizedBox(
            height: size!.height * 0.15,
            width: size.width,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (_, index) => _AvailableDayItem(
                nextWeek: nextWeek[index],
                active: nextWeek[index] == state.appointmentDate,
                onTap: () {
                  context!
                      .read<MakeAppointmentCubit>()
                      .onSelectDate(nextWeek[index]);
                },
              ),
              separatorBuilder: (_, __) => Spaces().meduimHorozintolSpace(),
              itemCount: nextWeek.length,
            ),
          ),
        );
      },
    );
  }
}

class _AvailableDayItem extends StatelessWidget {
  const _AvailableDayItem({
    Key? key,
    @required this.nextWeek,
    this.active,
    this.onTap,
  }) : super(key: key);

  final DateTime? nextWeek;
  final bool? active;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: active ?? false ? ColorSchema.green : Colors.transparent,
          borderRadius: BorderRadius.circular(50.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${DateFormat("E").format(nextWeek!)}".toUpperCase(),
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.blueGrey,
                  ),
            ),
            Spaces().smallSpace(),
            Text(
              "${nextWeek!.day}",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: active ?? false
                      ? Colors.white
                      : Colors.black.withOpacity(0.8)),
            ),
          ],
        ),
      ),
    );
  }
}
