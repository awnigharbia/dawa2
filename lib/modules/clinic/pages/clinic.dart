import 'package:clinic_api/clinic_api.dart' as clinic_api;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/clinic/widgets/widgets.dart';

import '../clinic.dart';

class Clinic extends StatefulWidget {
  final clinic_api.Clinic? clinic;

  const Clinic({Key? key, @required this.clinic}) : super(key: key);

  @override
  _ClinicState createState() => _ClinicState();
}

class _ClinicState extends State<Clinic> {
  @override
  Widget build(BuildContext context) {
    final repository = ClinicRepository();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DoctorBloc(widget.clinic!.id!,
              doctorRepository: clinic_api.DoctorApiClient())
            ..add(DoctorEvent.loadStarted()),
        ),
        BlocProvider(
          create: (context) =>
              ReviewsBloc(widget.clinic!.id!, clinicRepository: repository)
                ..add(ReviewsEvent.loadStarted()),
        ),
        BlocProvider(
          create: (_) => ClinicServicesBloc(
              servicesApiClient: clinic_api.ClinicServicesApiClient())
            ..add(ClinicServicesEvent.loadStarted(
                servicesIdList: widget.clinic!.services)),
        )
      ],
      child: _ClinicView(clinic: widget.clinic!),
    );
  }
}

class _ClinicView extends StatelessWidget {
  const _ClinicView({
    Key? key,
    @required this.clinic,
  }) : super(key: key);

  final clinic_api.Clinic? clinic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: RefreshIndicator(
          onRefresh: () async {
            context
                .read<DoctorBloc>()
                .add(DoctorEvent.loadStarted(isRefresh: true));
            context
                .read<ReviewsBloc>()
                .add(ReviewsEvent.loadStarted(isRefresh: true));
            context.read<ClinicServicesBloc>().add(
                ClinicServicesEvent.loadStarted(
                    servicesIdList: clinic!.services, isRefresh: true));
          },
          child: Stack(
            children: [
              CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  ClinicAppBar(
                      name: clinic!.name, images: clinic!.imgCollection),
                  _ClinicBody(clinic: clinic!),
                ],
              ),
              BookAppointmentBtn(
                clinic: clinic!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ClinicBody extends StatelessWidget {
  final clinic_api.Clinic? clinic;

  const _ClinicBody({
    Key? key,
    @required this.clinic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding:
          EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0, bottom: 100.0),
      sliver: SliverList(
          delegate: SliverChildListDelegate(
        [
          TitleWithRate(title: clinic!.name, rate: clinic!.rate),
          Spaces().highSpace(),
          WorkHoursWithDescription(clinic: clinic!),
          Spaces().highSpace(),
          DoctorPreview(),
          Spaces().highSpace(),
          ClinicServices(servicesIds: clinic!.services),
          Spaces().highSpace(),
          ReviewsHeader(clinic: clinic!),
          Reviews(),
        ],
      )),
    );
  }
}
