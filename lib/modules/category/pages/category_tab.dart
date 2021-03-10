import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/common.dart';
import 'package:dawa2/modules/category/category.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          slivers: [
            TopHeader(),
            SliverFillRemaining(
              child: BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  return state.map(
                      initial: (_) => Common.sectionsLoader(),
                      loadSuccess: (successState) => CategoryListView(
                            categories: successState.categories,
                            onRefresh: () async {
                              context.read<CategoryBloc>().add(
                                  CategoryEvent.loadStarted(isRefresh: true));
                            },
                          ),
                      loadFailure: (_) => Text("Load Faild"));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
