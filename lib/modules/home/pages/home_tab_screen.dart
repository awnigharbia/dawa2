import 'package:category_api/category_api.dart' as category_api;
import 'package:clinic_api/clinic_api.dart';
import 'package:dawa2/localization/doctor_pet_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/home/home.dart';
import 'package:dawa2/modules/viewall_clinics/viewall_clinics.dart';

import '../home.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  _HomeTabScreenState createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LocationBloc>().add(LocationEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, state) {
          return state.map(
            initial: (_) {
              return MultiBlocProvider(
                key: Key("loading page"),
                providers: [
                  BlocProvider(
                    create: (_) => NearbyclinicBloc(
                      homeRepository: HomeRepository(
                        clinicApiClient: context.read<ClinicApiClient>(),
                        categoryApiClient: category_api.CategoryApiClient(
                            center: CenterPoint(0, 0)),
                      ),
                    ),
                  ),
                  BlocProvider(
                    create: (_) => TopRatedClinicBloc(
                      viewallRepository: ViewAllRepository(
                          clinicApiClient: context.read<ClinicApiClient>()),
                    ),
                  ),
                ],
                child: _HomeTabScreenView(),
              );
            },
            loadSuccess: (position) {
              final repository = ClinicApiClient(
                  centerPoint:
                      CenterPoint(position.latitude, position.longitude));

              return MultiBlocProvider(
                key: Key("view page"),
                providers: [
                  BlocProvider(
                    create: (_) => NearbyclinicBloc(
                      homeRepository: HomeRepository(
                          clinicApiClient: repository,
                          categoryApiClient: category_api.CategoryApiClient(
                              center: CenterPoint(
                                  position.latitude, position.longitude))),
                    )..add(NearbyclinicEvent.initialLoadStarted()),
                  ),
                  BlocProvider(
                    create: (_) => TopRatedClinicBloc(
                      viewallRepository:
                          ViewAllRepository(clinicApiClient: repository),
                    )..add(TopRatedClinicEvent.initialLoadStarted()),
                  ),
                ],
                child: _HomeTabScreenView(),
              );
            },
            loadFailure: (_) => RequestLocationPermission(),
          );
        },
      ),
    );
  }
}

class _HomeTabScreenView extends StatefulWidget {
  const _HomeTabScreenView({
    Key? key,
  }) : super(key: key);

  @override
  __HomeTabScreenViewState createState() => __HomeTabScreenViewState();
}

class __HomeTabScreenViewState extends State<_HomeTabScreenView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        physics: NeverScrollableScrollPhysics(),
        slivers: [
          _TopHeader(),
          SliverFillRemaining(
            child: RefreshIndicator(
              onRefresh: () async {
                context
                    .read<NearbyclinicBloc>()
                    .add(NearbyclinicEvent.loadStarted(isRefresh: true));
                context
                    .read<TopRatedClinicBloc>()
                    .add(TopRatedClinicEvent.loadStarted(isRefresh: true));
              },
              child: CustomScrollView(
                slivers: [
                  // _SearchInput(),
                  SliverToBoxAdapter(
                      child: Divider(
                          thickness: 2,
                          height: 2,
                          color: Colors.grey.withOpacity(0.1))),
                  TopRated(),
                  SliverToBoxAdapter(child: Spaces().smallSpace()),
                  NearMe(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchInput extends StatelessWidget {
  const _SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: TextField(
        decoration: InputDecoration(
          prefixIcon:
              Icon(Icons.search_sharp, color: Colors.black.withOpacity(0.8)),
          hintText: "Type to search...",
          hintStyle: TextStyle(color: Colors.grey, fontSize: 15.0),
          alignLabelWithHint: true,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class _TopHeader extends StatelessWidget {
  const _TopHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spaces().meduimSpace(),
            Text(Localization.of(context)!.tr("homeTab")!,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold)),
            Spaces().smallSpace(),
            Text(
              Localization.of(context)!.tr("homeSubtitle")!,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
            Spaces().smallSpace(),
          ],
        ),
      ),
    );
  }
}
