import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dawa2/core/utils/utils.dart';

class ClinicAppBar extends StatelessWidget {
  final List<String>? images;
  final String? name;

  const ClinicAppBar({
    Key? key,
    @required this.images,
    @required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * 0.25,
      pinned: true,
      stretch: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(LocaleIcon.backArrow(context)),
      ),
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: [StretchMode.zoomBackground],
        background: Swiper(
          pagination: new SwiperPagination(
            alignment: Alignment.bottomCenter,
            builder: new DotSwiperPaginationBuilder(
              color: Colors.white.withOpacity(0.5),
              activeColor: ColorSchema.green,
              size: 8.0,
              activeSize: 8.0,
            ),
          ),
          itemCount: images!.length,
          itemBuilder: (_, index) => CirceledCachedImage(
            imgUrl: images![index],
            radius: 0.0,
            size: 0.4,
          ),
        ),
      ),
    );
  }
}
