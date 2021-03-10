import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:clinic_api/clinic_api.dart' as clinic_api;
import '../clinic.dart';

class ClinicServices extends StatelessWidget {
  final List<String>? servicesIds;

  const ClinicServices({
    Key? key,
    this.servicesIds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Services (${servicesIds!.length})",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Colors.black.withOpacity(0.8)),
        ),
        BlocBuilder<ClinicServicesBloc, ClinicServicesState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => Text("Loading"),
                loadSuccess: (successState) =>
                    _ClinicService(services: successState.services!.toList()),
                loadFailure: (_) => Text("Load Faild"));
          },
        )
      ],
    );
  }
}

class _ClinicService extends StatelessWidget {
  final List<clinic_api.ClinicService>? services;

  const _ClinicService({
    Key? key,
    @required this.services,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationUtil(
      builder: (context, size) => SizedBox(
        height: size!.height * 0.2,
        width: size.width,
        child: services!.isEmpty
            ? Center(child: Text("No Services yet"))
            : ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (_, index) => Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            offset: Offset(0, 3),
                            spreadRadius: 2,
                            blurRadius: 5,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CirceledCachedImage(
                              imgUrl: services![index].imgUrl,
                              size: 0.2,
                              radius: 0.0),
                          Spaces().smallSpace(),
                          Text(services![index].name!,
                              style: Theme.of(context!).textTheme.bodyText2),
                        ],
                      ),
                    ),
                separatorBuilder: (_, __) => Spaces().meduimHorozintolSpace(),
                itemCount: services!.length),
      ),
    );
  }
}
