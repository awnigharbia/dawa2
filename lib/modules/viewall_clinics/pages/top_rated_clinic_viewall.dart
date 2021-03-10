import 'package:clinic_api/clinic_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/modules/home/home.dart';
import 'package:dawa2/modules/viewall_clinics/bloc/bloc.dart';
import 'package:dawa2/modules/viewall_clinics/viewall_clinics.dart';
import 'package:dawa2/modules/viewall_clinics/widgets/widgets.dart';

class TopRatedClinicViewAll extends StatefulWidget {
  @override
  _TopRatedClinicViewAllState createState() => _TopRatedClinicViewAllState();
}

class _TopRatedClinicViewAllState extends State<TopRatedClinicViewAll> {
  @override
  void initState() {
    super.initState();
    context.read<LocationBloc>().add(LocationEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, "Top rated clinics"),
      body: LocationBlocBuilder(
        initial: (_) => SizedBox.shrink(),
        loadSuccess: (position) {
          final repository = ViewAllRepository(
              clinicApiClient: ClinicApiClient(
                  centerPoint:
                      CenterPoint(position.latitude, position.longitude)));

          return BlocProvider(
              create: (_) =>
                  ViewallTopratedClinicBloc(viewallRepository: repository)
                    ..add(ViewallTopratedClinicEvent.loadStarted()),
              child: TopRatedClinicBlocBuilder());
        },
      ),
    );
  }
}
