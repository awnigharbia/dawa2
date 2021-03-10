import 'package:flutter/material.dart';

class OrientationUtil extends StatelessWidget {
  final Widget Function(BuildContext? context, Size? size)? builder;

  const OrientationUtil({Key? key, @required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size;
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      size = Size(MediaQuery.of(context).size.height,
          MediaQuery.of(context).size.width);
    } else {
      size = Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height);
    }

    return builder!(context, size);
  }
}
