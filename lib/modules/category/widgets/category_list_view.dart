import 'package:built_collection/built_collection.dart';
import 'package:category_api/category_api.dart';
import 'package:flutter/material.dart';
import 'package:dawa2/modules/category/widgets/section_list_item.dart';

import '../../../config/router/route_name_builder.dart';

class CategoryListView extends StatelessWidget {
  final BuiltList<Category>? categories;
  final Future<void> Function()? onRefresh;

  const CategoryListView({
    Key? key,
    this.categories,
    this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh!,
      child: GridView.builder(
        itemCount: categories!.length,
        padding: EdgeInsets.all(8.0),
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => Material(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          child: CategoryListItem(
            onTap: () => Navigator.pushNamed(
                context, RouteNameBuilder.sectionById(categories![index].id!),
                arguments: categories![index].name),
            name: categories![index].name,
            imgUrl: categories![index].imgUrl,
          ),
        ),
      ),
    );
  }
}
