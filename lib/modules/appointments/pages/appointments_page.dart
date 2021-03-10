import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dawa2/core/utils/common.dart';
import 'package:dawa2/core/utils/utils.dart';

import '../appointments.dart';

class ViewAppointments extends StatefulWidget {
  @override
  _ViewAppointmentsState createState() => _ViewAppointmentsState();
}

class _ViewAppointmentsState extends State<ViewAppointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          slivers: [
            TopHeader(),
            SliverFillRemaining(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                child: RefreshIndicator(
                  onRefresh: () async {
                    context.read<ViewPassAppointmentsBloc>().add(
                        ViewPassAppointmentsEvent.loadStarted(isRefresh: true));
                    context.read<ViewUpcomingAppointmentsBloc>().add(
                        ViewUpcomingAppointmentsEvent.loadStarted(
                            isRefresh: true));
                  },
                  child: ListView(
                    children: [
                      BlocBuilder<ViewUpcomingAppointmentsBloc,
                          ViewUpcomingAppointmentsState>(
                        builder: (context, state) {
                          return state.map(
                            initial: (_) => Common.clinicLoader(),
                            loadSuccess: (successState) =>
                                _UpcomingAppointments(
                                    appointments: successState.appointmentsData!
                                        .toList()),
                            loadFailure: (_) => Text("Load Faild"),
                          );
                        },
                      ),
                      Spaces().highSpace(),
                      BlocBuilder<ViewPassAppointmentsBloc,
                          ViewPassAppointmentsState>(
                        builder: (context, state) {
                          return state.map(
                            initial: (_) => Common.clinicLoader(),
                            loadSuccess: (successState) => _PassAppointments(
                                appointments:
                                    successState.appointmentsData!.toList()),
                            loadFailure: (_) => Text("Load Faild"),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PassAppointments extends StatelessWidget {
  final List<AppointmentData>? appointments;
  const _PassAppointments({
    Key? key,
    this.appointments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return appointments!.isEmpty
        ? SizedBox.shrink()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _AppointmentViewSectionTitle(
                  title:
                      "${Localization.of(context)!.tr("pass")} (${appointments!.length})"),
              Spaces().meduimSpace(),
              AppointmentListView(appointments: appointments!, isPassed: true),
            ],
          );
  }
}

class _UpcomingAppointments extends StatelessWidget {
  final List<AppointmentData>? appointments;
  const _UpcomingAppointments({
    Key? key,
    this.appointments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return appointments!.isEmpty
        ? SizedBox.shrink()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _AppointmentViewSectionTitle(
                  title:
                      "${Localization.of(context)!.tr("upcoming")} (${appointments!.length})"),
              Spaces().meduimSpace(),
              AppointmentListView(appointments: appointments!, isPassed: false),
            ],
          );
  }
}

class _AppointmentViewSectionTitle extends StatelessWidget {
  final String? title;
  const _AppointmentViewSectionTitle({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? "",
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
          fontWeight: FontWeight.bold, color: Colors.blueGrey.shade800),
    );
  }
}
