import 'package:flutter/material.dart';

import 'package:dawa2/core/utils/utils.dart';

class TitleWithRate extends StatelessWidget {
  final String? title;
  final double? rate;
  const TitleWithRate({
    Key? key,
    this.title,
    this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Text(
            title ?? "",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.8)),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                ColorSchema.green.shade700,
                ColorSchema.green,
              ],
            ),
          ),
          child: Row(
            children: [
              Icon(Icons.star, color: Colors.white, size: 20),
              SizedBox(width: 4.0),
              Text("${rate ?? 0.0}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
