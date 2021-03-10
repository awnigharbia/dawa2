import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:dawa2/config/router/route_name_builder.dart';
import 'package:dawa2/core/utils/utils.dart';
import '../../../clinic/clinic.dart' as clinic_module;

class ClinicListView extends StatelessWidget {
  final BuiltList<Clinic>? clinics;

  const ClinicListView({
    Key? key,
    @required this.clinics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: clinics!.isEmpty
          ? Text("No clinics around you")
          : ListView.separated(
              primary: false,
              shrinkWrap: true,
              separatorBuilder: (_, __) => Spaces().meduimSpace(),
              itemBuilder: (_, index) => GestureDetector(
                onTap: () async {
                  Navigator.of(context, rootNavigator: true).pushNamed(
                      RouteNameBuilder.clinicResource,
                      arguments: clinics![index]);
                },
                child: ClinicListItem(
                  clinic: clinics![index],
                ),
              ),
              itemCount: clinics!.length,
            ),
    );
  }
}

class ClinicListItem extends StatelessWidget {
  final Clinic? clinic;

  const ClinicListItem({
    Key? key,
    @required this.clinic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: Offset(0, 0),
            blurRadius: 4,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ClinicSectionItemImageWithRate(
                imgUrl: clinic!.imgUrl,
                rate: clinic!.rate,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            clinic!.name!.replaceAll("", "\u{200B}"),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.7)),
                          ),
                          Text(clinic!.location!.replaceAll("", "\u{200B}"),
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(color: Colors.grey)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(EvaIcons.folderAddOutline,
                                  color: Colors.grey),
                              SizedBox(width: 2),
                              Text(
                                clinic!.category!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        color: Colors.black.withOpacity(0.6)),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(EvaIcons.pinOutline, color: Colors.grey),
                              SizedBox(width: 2),
                              Text(
                                "${clinic!.distance!.toInt()}${Localization.of(context)!.tr("km")}",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        color: Colors.black.withOpacity(0.6)),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ClinicSectionItemImageWithRate extends StatelessWidget {
  final String? imgUrl;
  final double? rate;

  const _ClinicSectionItemImageWithRate({
    Key? key,
    @required this.imgUrl,
    this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationUtil(
      builder: (context, size) => SizedBox(
        width: size!.width * 0.25,
        child: Stack(
          children: [
            CirceledCachedImage(
              imgUrl: imgUrl,
              size: 0.25,
              radius: 5.0,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: ColorSchema.green,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.white, size: 15),
                      Text("$rate",
                          style: Theme.of(context!)
                              .textTheme
                              .caption!
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
