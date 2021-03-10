import 'package:flutter/material.dart';

class CustomAnimationToast extends StatefulWidget {
  final AnimationController? controller;
  final Widget? child;

  const CustomAnimationToast({Key? key, @required this.controller, this.child})
      : super(key: key);

  @override
  _CustomAnimationToastState createState() => _CustomAnimationToastState();
}

class _CustomAnimationToastState extends State<CustomAnimationToast> {
  static final Tween<Offset>? tweenOffset = Tween<Offset>(
    begin: const Offset(0, 40),
    end: const Offset(0, 0),
  );

  static final Tween<double> tweenScale = Tween<double>(begin: 0.7, end: 1.0);
  Animation<double>? animation;

  @override
  void initState() {
    animation =
        CurvedAnimation(parent: widget.controller!, curve: Curves.decelerate);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      child: widget.child,
      animation: animation!,
      builder: (BuildContext? context, Widget? child) {
        return Transform.translate(
          offset: tweenOffset!.evaluate(animation!),
          child: Transform.scale(
            scale: tweenScale.evaluate(animation!),
            child: Opacity(
              child: child,
              opacity: animation!.value,
            ),
          ),
        );
      },
    );
  }
}
