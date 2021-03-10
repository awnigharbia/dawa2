import 'package:flutter/material.dart';

class ShadowWrapper extends StatelessWidget {
  const ShadowWrapper({Key? key, @required this.child, this.width, this.radius})
      : super(key: key);

  final Widget? child;
  final double? width;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? null,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius ?? 5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.09),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: child,
    );
  }
}
