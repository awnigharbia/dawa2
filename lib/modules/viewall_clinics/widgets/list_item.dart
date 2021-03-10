import 'package:clinic_api/clinic_api.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'package:dawa2/core/utils/utils.dart';

import 'widgets.dart';

class ViewAllListItem extends StatelessWidget {
  final Clinic? clinic;
  const ViewAllListItem({
    Key? key,
    this.clinic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            offset: Offset(0, 0),
            blurRadius: 4,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListItemImageWithRate(imgUrl: clinic!.imgUrl, rate: clinic!.rate),
              _ListItemInfo(clinic: clinic!)
            ],
          ),
        ),
      ),
    );
  }
}

class _ListItemInfo extends StatelessWidget {
  final Clinic? clinic;
  const _ListItemInfo({
    Key? key,
    this.clinic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            _ListItemTopHeader(clinic: clinic!),
            Spaces().smallSpace(),
            _ListItemBottom(clinic: clinic!)
          ],
        ),
      ),
    );
  }
}

class _ListItemBottom extends StatelessWidget {
  final Clinic? clinic;
  const _ListItemBottom({
    Key? key,
    this.clinic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(EvaIcons.pinOutline, color: ColorSchema.green, size: 20),
            SizedBox(width: 2),
            Text(
              "${clinic!.distance! < 2 ? clinic!.distance!.toStringAsFixed(1) : clinic!.distance!.toInt()}Km",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: ColorSchema.green),
            )
          ],
        ),
        Container(
          height: 33.0,
          width: MediaQuery.of(context).size.width * 0.18,
          child: FlatButton(
            onPressed: () {},
            splashColor: Colors.transparent,
            padding: EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ColorSchema.green.shade700,
                      ColorSchema.green,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Book",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ListItemTopHeader extends StatelessWidget {
  final Clinic? clinic;
  const _ListItemTopHeader({
    Key? key,
    this.clinic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          clinic!.name!.replaceAll("", "\u{200B}"),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
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
    );
  }
}
