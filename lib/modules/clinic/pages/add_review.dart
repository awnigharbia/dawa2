import 'package:clinic_api/clinic_api.dart' as clinic_api;
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:dawa2/core/utils/common.dart';
import 'package:dawa2/core/utils/toast/toast.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:formz/formz.dart';
import '../clinic.dart';

class AddReview extends StatefulWidget {
  final clinic_api.Clinic? clinic;

  const AddReview({Key? key, @required this.clinic}) : super(key: key);

  @override
  _AddReviewState createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ReviewAddCubit, ReviewAddState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          Navigator.pop(context);
        }

        if (state.status.isSubmissionFailure) {
          Toast.showToast("Post faild.");
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.close, color: Colors.grey),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [_SubmitBtn(clinicId: widget.clinic!.id)],
        ),
        body: SizedBox.expand(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spaces().highSpace(),
                CirceledCachedImage(imgUrl: widget.clinic!.imgUrl, size: 0.3),
                Spaces().meduimSpace(),
                _ClinicDetail(widget: widget),
                Spaces().highSpace(),
                _Rating(),
                Spaces().smallSpace(),
                _RateIndicator(),
                Spaces().highSpace(),
                _WriteComment(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ClinicDetail extends StatelessWidget {
  const _ClinicDetail({
    Key? key,
    @required this.widget,
  }) : super(key: key);

  final AddReview? widget;

  @override
  Widget build(BuildContext context) {
    return OrientationUtil(
      builder: (context, size) => SizedBox(
        width: size!.width * 0.8,
        child: Column(
          children: [
            Text("How was your experience with ${widget!.clinic!.name} ?",
                style: Theme.of(context!).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.8)),
                textAlign: TextAlign.center),
            Spaces().smallSpace(),
            Text("Your feedback matters",
                style: TextStyle(color: Colors.black.withOpacity(0.7)))
          ],
        ),
      ),
    );
  }
}

class _WriteComment extends StatelessWidget {
  const _WriteComment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Write a comment",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(fontWeight: FontWeight.bold))),
          Spaces().smallSpace(),
          TextField(
            textInputAction: TextInputAction.done,
            onChanged: (val) => context.read<ReviewAddCubit>().onComment(val),
            minLines: 5,
            maxLines: 10,
            maxLength: 450,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.grey.withOpacity(0), width: 0),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _RateIndicator extends StatelessWidget {
  const _RateIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Great!",
        style: TextStyle(
          color: Colors.grey,
          fontStyle: FontStyle.italic,
        ));
  }
}

class _Rating extends StatelessWidget {
  const _Rating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: context.read<ReviewAddCubit>().state.rate,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      unratedColor: ColorSchema.green.withOpacity(0.3),
      itemBuilder: (context, _) => Icon(
        EvaIcons.star,
        color: ColorSchema.green,
      ),
      onRatingUpdate: (rate) {
        context.read<ReviewAddCubit>().onRate(rate);
      },
    );
  }
}

class _SubmitBtn extends StatelessWidget {
  final String? clinicId;

  const _SubmitBtn({
    Key? key,
    this.clinicId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewAddCubit, ReviewAddState>(
      builder: (context, state) {
        return FlatButton(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          textColor: ColorSchema.green,
          onPressed: state.status.isInvalid
              ? null
              : () {
                  context.read<ReviewAddCubit>().addReview(clinicId!);
                },
          child: state.status.isSubmissionInProgress
              ? Common.buildBtnLoader()
              : Text("Post", style: TextStyle(fontWeight: FontWeight.bold)),
        );
      },
    );
  }
}
