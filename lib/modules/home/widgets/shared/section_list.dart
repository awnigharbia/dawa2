import 'package:animations/animations.dart';
import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart' as clinic_api;
import 'package:flutter/material.dart';

import 'package:dawa2/core/utils/utils.dart';

import '../../../clinic/clinic.dart';
import 'section_list_item.dart';

class SectionList extends StatelessWidget {
  final BuiltList<clinic_api.Clinic>? clinics;
  const SectionList({
    Key? key,
    this.clinics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationUtil(
      builder: (_, size) => SizedBox(
        height: size!.height * 0.25,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          separatorBuilder: (_, __) => Spaces().smallHorozintolSpace(),
          itemBuilder: (context, index) => SizedBox(
            width: size.width * 0.4,
            child: OpenContainer(
              useRootNavigator: true,
              openColor: Colors.transparent,
              closedColor: Colors.transparent,
              closedElevation: 0.0,
              openBuilder: (_, __) => Clinic(
                clinic: clinics?[index],
              ),
              closedBuilder: (_, openContainer) =>
                  SectionListItem(clinic: clinics![index]),
            ),
          ),
          itemCount: clinics!.length,
        ),
      ),
    );
  }
}
