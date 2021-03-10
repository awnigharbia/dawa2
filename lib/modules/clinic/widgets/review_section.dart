import 'package:clinic_api/clinic_api.dart' as clinic_repostiroy;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/config/router/route_name_builder.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../clinic.dart';

class Reviews extends StatelessWidget {
  const Reviews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ReviewsListView();
  }
}

class _ReviewsListView extends StatelessWidget {
  const _ReviewsListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewsBloc, ReviewsState>(
      buildWhen: (prev, curr) => prev != curr,
      builder: (context, state) {
        return state.map(
          initial: (_) => Text("Loading"),
          loadSuccess: (successState) {
            return successState.reviews!.isEmpty
                ? _EmptyReviews()
                : ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: successState.hasReachedMax
                        ? successState.reviews!.length
                        : successState.reviews!.length + 1,
                    separatorBuilder: (_, __) => Spaces().highSpace(),
                    itemBuilder: (context, index) => index >=
                            successState.reviews!.length
                        ? _LoadMore()
                        : _ReviewListItem(review: successState.reviews![index]),
                  );
          },
          loadFailure: (_) => Text("Load Failed"),
        );
      },
    );
  }
}

class _EmptyReviews extends StatelessWidget {
  const _EmptyReviews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Text("Be the first review")),
    );
  }
}

class _ReviewListItem extends StatelessWidget {
  final clinic_repostiroy.Review? review;

  const _ReviewListItem({
    Key? key,
    @required this.review,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final reviewTime = timeago.format(review!.createdAt!);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  CirceledCachedImage(
                    imgUrl: review!.user!.photo,
                    size: 0.1,
                  ),
                  Spaces().meduimHorozintolSpace(),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          review!.user!.name!.replaceAll("", "\u{200B}"),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text("$reviewTime",
                            style: Theme.of(context).textTheme.caption),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: review!.rate!.toInt() > index
                            ? ColorSchema.green
                            : Colors.grey.withOpacity(0.5),
                        size: 15,
                      )).toList(),
            )
          ],
        ),
        Spaces().smallSpace(),
        Text(
          review!.body!,
          textAlign: TextAlign.justify,
          style: TextStyle(color: Colors.black.withOpacity(0.7)),
        ),
      ],
    );
  }
}

class ReviewsHeader extends StatelessWidget {
  final clinic_repostiroy.Clinic? clinic;
  const ReviewsHeader({
    Key? key,
    @required this.clinic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Reviews",
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Colors.black.withOpacity(0.8)),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RouteNameBuilder.addReviewResource,
                arguments: clinic);
          },
          child: Text(
            "Write a review",
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

class _LoadMore extends StatelessWidget {
  final VoidCallback? onTap;

  const _LoadMore({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewsBloc, ReviewsState>(
      builder: (context, state) {
        final isLoadMore = (state as ReviewsLoadSuccess).isLoadMore;
        return Center(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: isLoadMore
                ? null
                : () {
                    context.read<ReviewsBloc>().add(ReviewsEvent.loadStarted());
                  },
            child: Text(
              isLoadMore ? "Loading..." : "More reviews",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontWeight: FontWeight.bold, color: ColorSchema.green),
            ),
          ),
        );
      },
    );
  }
}
