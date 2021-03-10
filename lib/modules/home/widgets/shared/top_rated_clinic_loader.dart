import 'package:flutter/material.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:shimmer/shimmer.dart';

class TopRatedClinicLoader extends StatefulWidget {
  @override
  _TopRatedClinicLoaderState createState() => _TopRatedClinicLoaderState();
}

class _TopRatedClinicLoaderState extends State<TopRatedClinicLoader> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Row(
          children: List.generate(orientation == Orientation.portrait ? 2 : 4,
              (index) => _TopRatedClinicLoaderItem()),
        );
      },
    );
  }
}

class _TopRatedClinicLoaderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: OrientationUtil(
        builder: (context, size) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Stack(
            overflow: Overflow.clip,
            children: [
              Shimmer.fromColors(
                child: Container(
                  width: size!.width * 0.4,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                baseColor: Colors.grey.withOpacity(0.4),
                highlightColor: Colors.grey.withOpacity(0.3),
              ),
              Positioned(
                bottom: 16,
                left: 10,
                child: Shimmer.fromColors(
                  child: Container(
                    width: size.width * 0.3,
                    height: size.height * 0.02,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  baseColor: Colors.grey.withOpacity(0.4),
                  highlightColor: Colors.grey.withOpacity(0.3),
                ),
              ),
              Positioned(
                bottom: 36,
                left: 10,
                child: Shimmer.fromColors(
                  child: Container(
                    width: size.width * 0.35,
                    height: size.height * 0.02,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  baseColor: Colors.grey.withOpacity(0.4),
                  highlightColor: Colors.grey.withOpacity(0.3),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
