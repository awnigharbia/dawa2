import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';
import 'package:dawa2/core/utils/utils.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spaces().meduimSpace(),
            Text(Localization.of(context)!.tr("categories")!,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold)),
            Spaces().smallSpace(),
            Text(
              Localization.of(context)!.tr("categoriesSubtitle")!,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
            Spaces().smallSpace(),
          ],
        ),
      ),
    );
  }
}
