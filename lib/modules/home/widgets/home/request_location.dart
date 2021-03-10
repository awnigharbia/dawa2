import 'package:clinic_api/clinic_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dawa2/core/utils/toast/toast.dart';
import 'package:dawa2/core/utils/utils.dart';
import 'package:dawa2/modules/home/home.dart';

class RequestLocationPermission extends StatefulWidget {
  @override
  _RequestLocationPermissionState createState() =>
      _RequestLocationPermissionState();
}

class _RequestLocationPermissionState extends State<RequestLocationPermission> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              OrientationUtil(
                builder: (_, size) => SizedBox(
                  height: size!.height * 0.45,
                  child: Image.asset("assets/location.png"),
                ),
              ),
              Text(
                "Please enable location",
                style: Theme.of(context).textTheme.headline6,
              ),
              Spaces().meduimSpace(),
              FlatButton(
                splashColor: Colors.transparent,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                height: 40.0,
                color: ColorSchema.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                onPressed: () async {
                  context
                      .read<LocationBloc>()
                      .add(LocationEvent.requestPermission());
                },
                child: Text("Request permission",
                    style: TextStyle(color: Colors.white)),
              ),
              FlatButton(
                focusColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () async {
                  final canOpen = await LocationServices().openAppSettings();
                  if (!canOpen) {
                    Toast.showToast("Cannot open");
                  }
                },
                child: Text(
                  "Open App settings",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: ColorSchema.green,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Spaces().smallSpace(),
            ],
          ),
        ),
      ),
    );
  }
}
