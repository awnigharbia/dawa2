import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/modules/auth/auth.dart';

class TopHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spaces().meduimSpace(),
                Text(Localization.of(context)!.tr("more")!,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold)),
                Spaces().smallSpace(),
                Text(
                  Localization.of(context)!.tr("moreSubtitle")!,
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
                Spaces().smallSpace(),
              ],
            ),
            IconButton(
                icon: Icon(EvaIcons.logOutOutline),
                onPressed: () {
                  context
                      .read<AuthenticationBloc>()
                      .add(AuthenticationLogoutRequested());
                })
          ],
        ),
      ),
    );
  }
}
