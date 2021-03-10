import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clinic_api/clinic_api.dart' as clinic_api;
import 'package:dawa2/core/utils/utils.dart';

import '../../book_appointment.dart';

class ClinicService extends StatelessWidget {
  final List<clinic_api.ClinicService>? services;

  const ClinicService({
    Key? key,
    this.services,
  }) : super(key: key);

  @override
  Widget build(BuildContext? context) {
    return BlocBuilder<MakeAppointmentCubit, MakeAppointmentState>(
      buildWhen: (prev, curr) => prev.service != curr.service,
      builder: (context, state) {
        return OrientationUtil(
          builder: (context, size) => SizedBox(
            height: size!.height * 0.2,
            width: size.width,
            child: services!.isEmpty
                ? Center(
                    child: Text(Localization.of(context!)!.tr("noServices")!))
                : ListView.separated(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (_, index) => _ClinicServiceItem(
                        service: services?[index],
                        active: state.service?.id == services?[index].id,
                        onTap: () {
                          context!
                              .read<MakeAppointmentCubit>()
                              .onSelectService(services![index]);
                        }),
                    separatorBuilder: (_, __) =>
                        Spaces().meduimHorozintolSpace(),
                    itemCount: services!.length),
          ),
        );
      },
    );
  }
}

class _ClinicServiceItem extends StatelessWidget {
  final clinic_api.ClinicService? service;
  final bool? active;
  final VoidCallback? onTap;

  const _ClinicServiceItem({
    Key? key,
    this.service,
    this.active,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: active ?? false
              ? []
              : [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    offset: Offset(0, 3),
                    spreadRadius: 2,
                    blurRadius: 5,
                  )
                ],
          color: active ?? false ? ColorSchema.green : Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CirceledCachedImage(
                imgUrl: service!.imgUrl, size: 0.2, radius: 0.0),
            Spaces().smallSpace(),
            Text(service!.name!,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: active ?? false ? Colors.white : Colors.black,
                    )),
          ],
        ),
      ),
    );
  }
}
