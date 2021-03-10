import 'dart:io';
import 'dart:ui';

import 'package:clinic_api/clinic_api.dart';
import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/config/router/route_name_builder.dart';
import 'package:dawa2/core/utils/utils.dart';

import '../../book_appointment.dart';

class BookAppointmentNext extends StatelessWidget {
  final Clinic? clinic;
  final VoidCallback? onTap;

  const BookAppointmentNext({
    Key? key,
    this.onTap,
    this.clinic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MakeAppointmentCubit, MakeAppointmentState>(
        builder: (context, state) {
      return Positioned(
        bottom: 0,
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10.0,
              sigmaY: 10.0,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                left: 32.0,
                right: 32,
                top: 16.0,
                bottom: Platform.isIOS ? 32.0 : 16.0,
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow:
                          context.read<MakeAppointmentCubit>().isSubmitValid()
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
                    onPressed: context
                            .read<MakeAppointmentCubit>()
                            .isSubmitValid()
                        ? () {
                            Navigator.pushNamed(
                                context, RouteNameBuilder.confirmAppointment(),
                                arguments: ConfirmAppointmentDetail(
                                  clinic: clinic,
                                  appointmentDate: state.appointmentDate,
                                  appointmentTime: state.appointmentTime,
                                  service: state.service,
                                ));
                          }
                        : null,
                    disabledColor: ColorSchema.green.withOpacity(0.6),
                    height: 55.0,
                    minWidth: double.infinity,
                    color: ColorSchema.green,
                    splashColor: Colors.transparent,
                    child: Text(
                      Localization.of(context)!.tr("next")!,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
