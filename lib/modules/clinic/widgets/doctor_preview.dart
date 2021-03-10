import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/utils.dart';

import '../clinic.dart';

class DoctorPreview extends StatelessWidget {
  const DoctorPreview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorBloc, DoctorState>(
      buildWhen: (prev, curr) => prev != curr,
      builder: (context, state) {
        return state.map(
          initial: (_) => Text("loading"),
          loadSuccess: (successState) => Row(
            children: [
              CirceledCachedImage(
                  imgUrl: successState.doctor!.imgUrl, size: 0.3),
              Spaces().meduimHorozintolSpace(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    successState.doctor!.name!,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.7)),
                  ),
                  Text(
                    successState.doctor!.category!,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
          loadFailure: (_) => Text("Load Faild"),
        );
      },
    );
  }
}
