import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dawa2/modules/home/home.dart';

class LocationBlocBuilder extends StatelessWidget {
  final Widget Function(dynamic initial)? initial;
  final Widget Function(LocationLoadSuccess successState)? loadSuccess;
  const LocationBlocBuilder({
    Key? key,
    this.initial,
    this.loadSuccess,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        return state.map(
          initial: initial!,
          loadSuccess: loadSuccess!,
          loadFailure: (_) => RequestLocationPermission(),
        );
      },
    );
  }
}
