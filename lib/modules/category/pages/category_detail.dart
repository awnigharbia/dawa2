import 'package:category_api/category_api.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/common.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/category/category.dart';
import 'package:dawa2/modules/viewall_clinics/viewall_clinics.dart';

class SectionDetails extends StatelessWidget {
  final String? categoryId;
  final String? title;

  const SectionDetails({
    Key? key,
    @required this.categoryId,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getCustomAppBar(
        title: title ?? "",
        context: context,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(LocaleIcon.backArrow(context)),
        ),
      ),
      body: LocationBlocBuilder(
        initial: (_) => Common.clinicLoader(),
        loadSuccess: (position) {
          final client = CategoryApiClient(
              center: CenterPoint(position.latitude, position.longitude));

          return BlocProvider(
            create: (context) => CategoryDetailBloc(
              categoryId!,
              categoryRepository: CategoryRepository(categoryApiClient: client),
            )..add(CategoryDetailEvent.loadStarted()),
            child: CategoryDetailBlocBuilder(),
          );
        },
      ),
    );
  }
}

class CategoryDetailBlocBuilder extends StatelessWidget {
  const CategoryDetailBlocBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryDetailBloc, CategoryDetailState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Common.clinicLoader(),
            loadSuccess: (successState) => ClinicsViewallListView(
                  clinics: successState.clinics!,
                  hasReachedMax: successState.hasReachedMax,
                  onRefresh: () {
                    context.read<CategoryDetailBloc>().add(
                          CategoryDetailEvent.loadStarted(isRefresh: true),
                        );
                  },
                  loadMore: () {
                    context
                        .read<CategoryDetailBloc>()
                        .add(CategoryDetailEvent.loadStarted());
                  },
                ),
            loadFailure: (_) => Text("Load faild"));
      },
    );
  }
}
