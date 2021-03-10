import 'dart:io';
import 'dart:ui';

import 'package:clinic_api/clinic_api.dart' as clinic_api;
import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/utils.dart';

import '../../../config/router/route_name_builder.dart';
import '../clinic.dart';

class BookAppointmentBtn extends StatelessWidget {
  final clinic_api.Clinic? clinic;

  const BookAppointmentBtn({
    Key? key,
    this.clinic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClinicServicesBloc, ClinicServicesState>(
        builder: (context, state) {
      return state.maybeMap(
        loadSuccess: (succesState) => _BookAppointmentBtn(onTap: () {
          Navigator.pushNamed(context, RouteNameBuilder.bookAppointment(),
              arguments: BookAppointment(
                  clinic: clinic, services: succesState.services!.toList()));
        }),
        orElse: () => _BookAppointmentBtn(),
      );
    });
  }
}

class _BookAppointmentBtn extends StatelessWidget {
  const _BookAppointmentBtn({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
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
                  disabledColor: ColorSchema.green.withOpacity(0.6),
                  onPressed: onTap,
                  height: 55.0,
                  minWidth: double.infinity,
                  color: ColorSchema.green,
                  splashColor: Colors.transparent,
                  child: Text(
                    Localization.of(context)!.tr("bookAppointment")!,
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
  }
}
