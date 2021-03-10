import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/config/router/route_name_builder.dart';
import 'package:dawa2/core/utils/utils.dart';

import '../../home.dart';
import '../shared/section_header.dart';
import '../shared/section_list.dart';

class TopRated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(
            title: Localization.of(context)!.tr("topRated"),
            onViewAll: () {
              Navigator.of(context)
                  .pushNamed(RouteNameBuilder.viewallTopRatedClinics);
            },
          ),
          Spaces().meduimSpace(),
          BlocBuilder<TopRatedClinicBloc, TopRatedClinicState>(
            builder: (_, state) {
              return state.map(
                initial: (_) => TopRatedClinicLoader(),
                loadSuccess: (data) => SectionList(clinics: data.clinics!),
                loadFailure: (_) => Text("Faild to load"),
              );
            },
          )
        ],
      ),
    );
  }
}
