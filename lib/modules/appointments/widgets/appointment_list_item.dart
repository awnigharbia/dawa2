import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:dawa2/core/utils/utils.dart';

import '../appointments.dart';

class AppointmentListItem extends StatelessWidget {
  final AppointmentData? appointmentData;
  final bool? isPassed;

  const AppointmentListItem({
    Key? key,
    this.appointmentData,
    @required this.isPassed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            offset: Offset(0, 0),
            spreadRadius: 1,
            blurRadius: 3,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _AppointmentItemTime(appointmentData: appointmentData!),
          Spaces().meduimSpace(),
          _AppointmentItemInfo(appointmentData: appointmentData!),
          if (!isPassed!) Spaces().meduimSpace(),
          if (!isPassed!)
            _AppointmentItemAction(appointmentData: appointmentData!)
        ],
      ),
    );
  }
}

class _AppointmentItemAction extends StatelessWidget {
  final AppointmentData? appointmentData;
  const _AppointmentItemAction({
    Key? key,
    this.appointmentData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: OutlineButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
        splashColor: Colors.transparent,
        highlightedBorderColor: Colors.transparent,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.zero,
        onPressed: () async {
          context.read<ViewUpcomingAppointmentsBloc>().add(
              ViewUpcomingAppointmentsEvent.cancelAppointment(
                  appointmentId: appointmentData!.appointment!.id));
        },
        child: Text(
          Localization.of(context)!.tr("cancel")!,
          style: TextStyle(
            color: Colors.blueGrey.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _AppointmentItemInfo extends StatelessWidget {
  final AppointmentData? appointmentData;

  const _AppointmentItemInfo({
    Key? key,
    this.appointmentData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CirceledCachedImage(imgUrl: appointmentData!.clinic!.imgUrl, size: 0.2),
        Spaces().meduimHorozintolSpace(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(appointmentData!.clinic!.name!,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.blueGrey.shade700,
                      fontWeight: FontWeight.bold,
                    )),
            Spaces().smallSpace(),
            Text(appointmentData!.clinic!.location!,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Colors.blueGrey,
                    )),
          ],
        )
      ],
    );
  }
}

class _AppointmentItemTime extends StatelessWidget {
  final AppointmentData? appointmentData;
  const _AppointmentItemTime({
    Key? key,
    this.appointmentData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateFormat =
        DateFormat("d MMMM y", Localization.of(context)?.locale.languageCode)
            .format(appointmentData!.appointment!.appointmentDate);
    final formatedTime =
        DateFormat("jm", Localization.of(context)?.locale.languageCode).format(
            DateTime(
                0,
                0,
                0,
                appointmentData!.appointment!.appointmentDate.hour,
                appointmentData!.appointment!.appointmentDate.minute));
    return Text(
      "$formatedTime, $dateFormat",
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey.shade700,
          ),
    );
  }
}
