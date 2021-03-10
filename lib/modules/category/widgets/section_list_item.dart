import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CategoryListItem extends StatelessWidget {
  final VoidCallback? onTap;
  final String? name;
  final String? imgUrl;

  const CategoryListItem({
    Key? key,
    @required this.onTap,
    @required this.name,
    @required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.09),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 5), // changes position of shadow
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AspectRatio(
              aspectRatio: 10 / 5,
              child: CachedNetworkImage(
                imageUrl: imgUrl!,
                fit: BoxFit.fitHeight,
                errorWidget: (context, err, stack) => Text("Something wrong"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.0),
                child: Text(
                  name ?? '',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
