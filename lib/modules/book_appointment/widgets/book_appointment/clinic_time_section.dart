import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/utils.dart';

import '../../book_appointment.dart';
import '../widgets.dart';

class ClinicTimeSection extends StatelessWidget {
  final String? title;
  final List<TimeOfDay>? timeList;

  const ClinicTimeSection({
    Key? key,
    this.title,
    this.timeList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MakeAppointmentCubit, MakeAppointmentState>(
      buildWhen: (prev, curr) => prev.appointmentTime != curr.appointmentTime,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MakeAppointmentSectionTitle(title: title!),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  alignment: timeList!.length >= 3
                      ? WrapAlignment.spaceBetween
                      : WrapAlignment.start,
                  spacing: timeList!.length >= 3 ? 0.0 : 20.0,
                  runSpacing: 10.0,
                  children: timeList!
                      .map(
                        (hour) => ChoiceChip(
                          selected: state.appointmentTime == hour,
                          label: Text("${hour.hour}:00 ${hour.getPeriod()}"),
                          labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
                          labelStyle: TextStyle(
                              color: state.appointmentTime == hour
                                  ? Colors.white
                                  : ColorSchema.green),
                          backgroundColor: ColorSchema.green.withOpacity(0.05),
                          selectedColor: ColorSchema.green,
                          onSelected: (_) {
                            context
                                .read<MakeAppointmentCubit>()
                                .onSelectTime(hour);
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

extension on TimeOfDay {
  String getPeriod() {
    return this.period == DayPeriod.am ? "am" : "pm";
  }
}
