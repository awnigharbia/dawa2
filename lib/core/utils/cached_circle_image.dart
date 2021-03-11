import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'orientation_util.dart';

class CirceledCachedImage extends StatelessWidget {
  const CirceledCachedImage({
    Key? key,
    @required this.imgUrl,
    @required this.size,
    this.radius,
  }) : super(key: key);

  final String? imgUrl;
  final double? size;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return OrientationUtil(
      builder: (context, orientedSize) {
        return Container(
          width: orientedSize!.width * size!,
          height: orientedSize.width * size!,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
                radius ?? MediaQuery.of(context!).size.width * size!),
            child: CachedNetworkImage(
              imageUrl: imgUrl ?? "",
              errorWidget: (err, stack, child) => Image.asset(
                "assets/app-icon.png",
                fit: BoxFit.contain,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
