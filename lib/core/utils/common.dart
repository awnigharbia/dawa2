import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';

import 'clinic_list_loader.dart';
import 'section_list_loader.dart';

class Common {
  static Widget loader() => Center(child: CircularProgressIndicator());

  static Center buildBtnLoader() {
    return Center(
      child: SizedBox(
        width: 20.0,
        height: 20.0,
        child: Center(
          child: CircularProgressIndicator(
            strokeWidth: 1.2,
          ),
        ),
      ),
    );
  }

  static Widget emptyList(BuildContext context) =>
      Center(child: Text(Localization.of(context)!.tr("nothingToShow")!));

  static Widget tapLoader() => TabBarView(children: [
        loader(),
        loader(),
        loader(),
        loader(),
      ]);
  static Widget sectionsLoader() => SectionListLoader();

  static Widget clinicLoader({int? length}) => ClinicListLoader(length: length);

  static Widget reservationLoader() => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Common.clinicLoader(length: 6),
        ),
      );

  static Row buildStars(int length) => Row(
        children: List.generate(
          5,
          (index) => Icon(Icons.star,
              color:
                  index < length ? Colors.amber : Colors.grey.withOpacity(0.35),
              size: 20),
        ),
      );
}
