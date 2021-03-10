import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dawa2/core/utils/common.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/viewall_clinics/widgets/widgets.dart';

import '../viewall_clinics.dart';

class NearbyClinicViewall extends StatefulWidget {
  @override
  _NearbyClinicViewallState createState() => _NearbyClinicViewallState();
}

class _NearbyClinicViewallState extends State<NearbyClinicViewall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, "Nearby clinics"),
      body: LocationBlocBuilder(
        initial: (_) => Common.clinicLoader(),
        loadSuccess: (position) {
          final repository = ClinicApiClient(
              centerPoint: CenterPoint(
            position.latitude,
            position.longitude,
          ));

          return BlocProvider(
            create: (context) =>
                ViewallNearbyClinicBloc(clinicRepository: repository)
                  ..add(ViewallNearbyClinicEvent.loadStarted()),
            child: NearbyClinicsBlocBuilder(),
          );
        },
      ),
    );
  }
}

class NearbyClinicsBlocBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewallNearbyClinicBloc, ViewallNearbyClinicState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Common.clinicLoader(),
            loadSuccess: (successState) =>
                NearbyClinicsListView(clinics: successState.clinics!),
            loadFailure: (_) => Text("Load Failed"));
      },
    );
  }
}

class NearbyClinicsListView extends StatelessWidget {
  final BuiltList<Clinic>? clinics;

  const NearbyClinicsListView({
    Key? key,
    this.clinics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context
            .read<ViewallNearbyClinicBloc>()
            .add(ViewallNearbyClinicEvent.loadStarted(isRefresh: true));
      },
      child: clinics!.isEmpty
          ? Center(child: Text("No Clinics"))
          : ListView.separated(
              padding: EdgeInsets.all(16.0),
              separatorBuilder: (_, __) => Spaces().meduimSpace(),
              itemBuilder: (_, index) =>
                  ViewAllListItem(clinic: clinics![index]),
              itemCount: clinics!.length,
            ),
    );
  }
}
