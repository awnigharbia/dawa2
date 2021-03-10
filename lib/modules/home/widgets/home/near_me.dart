import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/config/router/route_name_builder.dart';
import 'package:dawa2/core/utils/common.dart';
import 'package:dawa2/core/utils/utils.dart';
import '../../home.dart';
import '../shared/section_header.dart';

class NearMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          SectionHeader(
            title: Localization.of(context)!.tr("nearbyClinics")!,
            subTitle: Localization.of(context)!.tr("nearFrom")!,
            onViewAll: () {
              Navigator.of(context)
                  .pushNamed(RouteNameBuilder.viewallNearbyClinics);
            },
          ),
          Spaces().meduimSpace(),
          BlocBuilder<NearbyclinicBloc, NearbyclinicState>(
            builder: (_, state) => state.map(
              initial: (_) => Common.clinicLoader(),
              loadSuccess: (nearbyClinicLoadSucces) => ClinicListView(
                clinics: nearbyClinicLoadSucces.clinics,
              ),
              loadFailure: (_) => Text("Load faild"),
            ),
          ),
        ],
      ),
    );
  }
}
