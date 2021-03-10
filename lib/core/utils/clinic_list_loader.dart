import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'spaces.dart';

class ClinicListLoader extends StatelessWidget {
  final int? length;

  const ClinicListLoader({
    Key? key,
    @required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
          children:
              List.generate(length ?? 5, (index) => ClinicListLoaderItem())),
    );
  }
}

class ClinicListLoaderItem extends StatelessWidget {
  const ClinicListLoaderItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey.withOpacity(0.4),
            highlightColor: Colors.grey.withOpacity(0.3),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          Spaces().meduimHorozintolSpace(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Shimmer.fromColors(
                baseColor: Colors.grey.withOpacity(0.4),
                highlightColor: Colors.grey.withOpacity(0.3),
                child: buildShimmerLine(context, 0.3),
              ),
              Spaces().meduimSpace(),
              Shimmer.fromColors(
                baseColor: Colors.grey.withOpacity(0.4),
                highlightColor: Colors.grey.withOpacity(0.3),
                child: buildShimmerLine(context, 0.6),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildShimmerLine(BuildContext context, double width) {
    return Container(
      width: MediaQuery.of(context).size.width * width,
      height: 20.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.grey.withOpacity(0.5),
      ),
    );
  }
}
