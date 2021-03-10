import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../book_appointment.dart';
import '../widgets/widgets.dart';

class ConfirmAppointment extends StatefulWidget {
  final ConfirmAppointmentDetail? confirmAppointmentDetail;

  const ConfirmAppointment({
    Key? key,
    this.confirmAppointmentDetail,
  }) : super(key: key);

  @override
  _ConfirmAppointmentState createState() => _ConfirmAppointmentState();
}

class _ConfirmAppointmentState extends State<ConfirmAppointment> {
  Map<MarkerId, Marker> markers = {};

  LatLng? _clinicCoordinates;
  bool showMap = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 250), () {
      setState(() {
        showMap = true;
      });
    });
    GeoPoint geoPoint =
        widget.confirmAppointmentDetail!.clinic!.position['geopoint'];
    _clinicCoordinates = LatLng(geoPoint.latitude, geoPoint.longitude);
  }

  void _onMapCreated(GoogleMapController controller) async {
    /// origin marker
    _addMarker(_clinicCoordinates!, "origin", BitmapDescriptor.defaultMarker);
    setState(() {});
  }

  _addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
    MarkerId markerId = MarkerId(id);
    Marker marker = Marker(
      markerId: markerId,
      icon: descriptor,
      position: position,
    );
    markers[markerId] = marker;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(EvaIcons.arrowBackOutline),
        ),
      ),
      body: Stack(
        children: [
          if (showMap)
            ClinicMapScreen(
                markers: markers,
                onMapCreated: _onMapCreated,
                clinicPosition: _clinicCoordinates!),
          if (showMap)
            Positioned(
              bottom: 20.0,
              left: 0,
              right: 0,
              child: ConfirmAppointmentFooter(
                  confirmAppointmentDetail: widget.confirmAppointmentDetail),
            ),
        ],
      ),
    );
  }
}
