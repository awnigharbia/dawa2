import 'package:flutter/material.dart';

import 'package:dawa2/core/utils/utils.dart';

class ListItemImageWithRate extends StatelessWidget {
  final String? imgUrl;
  final double? rate;
  const ListItemImageWithRate({
    Key? key,
    this.imgUrl,
    this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: OrientationUtil(
        builder: (context, size) => SizedBox(
          width: size!.width * 0.28,
          height: size.width * 0.22,
          child: Stack(
            children: [
              CirceledCachedImage(
                imgUrl: imgUrl,
                size: 0.28,
                radius: 5.0,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          ColorSchema.green,
                          ColorSchema.green.shade700,
                        ],
                      ),
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
      ),
    );
  }
}
