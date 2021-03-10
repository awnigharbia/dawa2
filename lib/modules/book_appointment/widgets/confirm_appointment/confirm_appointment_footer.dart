import 'dart:ui';

import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:dawa2/config/router/route_name_builder.dart';
import 'package:dawa2/core/utils/common.dart';
import 'package:dawa2/core/utils/toast/toast.dart';
import 'package:formz/formz.dart';
import 'package:dawa2/core/utils/utils.dart';
import '../../book_appointment.dart';

class ConfirmAppointmentFooter extends StatelessWidget {
  final ConfirmAppointmentDetail? confirmAppointmentDetail;

  const ConfirmAppointmentFooter({
    Key? key,
    this.confirmAppointmentDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateFormat =
        DateFormat("d MMMM y", Localization.of(context)!.locale.languageCode)
            .format(confirmAppointmentDetail!.appointmentDate!);
    final formatedTime =
        DateFormat("jm", Localization.of(context)!.locale.languageCode).format(
            DateTime(0, 0, 0, confirmAppointmentDetail!.appointmentTime!.hour,
                confirmAppointmentDetail!.appointmentTime!.minute));

    return BlocListener<BookAppointmentCubit, BookAppointmentState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          FluroRouter.appRouter.navigateTo(
              context, RouteNameBuilder.tabsResource,
              clearStack: true);
        }
        if (state.status.isSubmissionFailure) {
          Toast.showToast("Faild to book appointment");
        }
      },
      child: OrientationUtil(
        builder: (context, size) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: size!.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  confirmAppointmentDetail!.clinic!.name!
                      .replaceAll("", "\u{200B}"),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context!).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade700,
                      ),
                ),
                Spaces().smallSpace(),
                Row(
                  children: [
                    Icon(EvaIcons.pinOutline, color: Colors.blueGrey),
                    SizedBox(width: 4.0),
                    Expanded(
                      child: Text(
                        confirmAppointmentDetail!.clinic!.location!
                            .replaceAll("", "\u{200B}"),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.blueGrey,
                            ),
                      ),
                    ),
                  ],
                ),
                Spaces().meduimSpace(),
                Row(
                  children: [
                    Text(Localization.of(context)!.tr("time")!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.grey)),
                    Spaces().meduimHorozintolSpace(),
                    Text(formatedTime,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.blueGrey.shade800)),
                  ],
                ),
                Spaces().smallSpace(),
                Row(
                  children: [
                    Text(Localization.of(context)!.tr("date")!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.grey)),
                    Spaces().meduimHorozintolSpace(),
                    Text(dateFormat,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.blueGrey.shade800)),
                  ],
                ),
                Spaces().highSpace(),
                _BookAppointmentConfirmBtn(
                  onTap: () async {
                    await context
                        .read<BookAppointmentCubit>()
                        .addAppointment(confirmAppointmentDetail!);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BookAppointmentConfirmBtn extends StatelessWidget {
  const _BookAppointmentConfirmBtn({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookAppointmentCubit, BookAppointmentState>(
      builder: (context, state) {
        return Container(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: onTap != null
                      ? [
                          BoxShadow(
                            color: ColorSchema.green.withOpacity(0.3),
                            offset: Offset(0, 0),
                            blurRadius: 5,
                            spreadRadius: 2,
                          )
                        ]
                      : []),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: onTap,
                disabledColor: Colors.grey.withOpacity(0.6),
                height: 55.0,
                minWidth: double.infinity,
                color: ColorSchema.green,
                splashColor: Colors.transparent,
                child: state.status.isSubmissionInProgress
                    ? Common.buildBtnLoader()
                    : Text(
                        Localization.of(context)!.tr("confirmAppointment")!,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
