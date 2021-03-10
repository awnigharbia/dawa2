import 'package:built_collection/built_collection.dart';
import 'package:clinic_api/clinic_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dawa2/core/utils/common.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/viewall_clinics/viewall_clinics.dart';

import 'widgets.dart';

class TopRatedClinicBlocBuilder extends StatefulWidget {
  @override
  _TopRatedClinicBlocBuilderState createState() =>
      _TopRatedClinicBlocBuilderState();
}

class _TopRatedClinicBlocBuilderState extends State<TopRatedClinicBlocBuilder> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewallTopratedClinicBloc, ViewallTopratedClinicState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Common.clinicLoader(),
          loadSuccess: (successState) => ClinicsViewallListView(
            clinics: successState.clinics!,
            hasReachedMax: successState.hasReachedMax,
            onRefresh: () {
              context
                  .read<ViewallTopratedClinicBloc>()
                  .add(ViewallTopratedClinicEvent.loadStarted(isRefresh: true));
            },
            loadMore: () {
              context
                  .read<ViewallTopratedClinicBloc>()
                  .add(ViewallTopratedClinicEvent.loadStarted());
            },
          ),
          loadFailure: (_) => Text("Faild to load"),
        );
      },
    );
  }
}

class ClinicsViewallListView extends StatefulWidget {
  final BuiltList<Clinic>? clinics;
  final bool? hasReachedMax;
  final Function? onRefresh;
  final Function? loadMore;

  const ClinicsViewallListView({
    Key? key,
    this.clinics,
    this.hasReachedMax,
    this.onRefresh,
    this.loadMore,
  }) : super(key: key);

  @override
  _ClinicsViewallListViewState createState() => _ClinicsViewallListViewState();
}

class _ClinicsViewallListViewState extends State<ClinicsViewallListView> {
  final ScrollController _scrollController = ScrollController();
  final _scrollThreashold = 200.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        widget.onRefresh!();
      },
      child: widget.clinics!.isEmpty
          ? Center(child: Text("No Clinics"))
          : ListView.separated(
              controller: _scrollController,
              padding: EdgeInsets.all(16.0),
              itemBuilder: (_, index) {
                return index >= widget.clinics!.length
                    ? Common.buildBtnLoader()
                    : ViewAllListItem(
                        clinic: widget.clinics![index],
                      );
              },
              separatorBuilder: (_, __) => Spaces().meduimSpace(),
              itemCount: widget.hasReachedMax!
                  ? widget.clinics!.length
                  : widget.clinics!.length + 1,
            ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    if (maxScroll - currentScroll <= _scrollThreashold) {
      widget.loadMore!();
    }
  }
}
