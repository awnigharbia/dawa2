import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ClinicMapScreen extends StatelessWidget {
  static const _initialZoom = 16.0;

  final LatLng? clinicPosition;
  final Function(GoogleMapController)? onMapCreated;
  final Map<MarkerId, Marker>? markers;

  const ClinicMapScreen({
    Key? key,
    @required this.markers,
    this.onMapCreated,
    this.clinicPosition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: clinicPosition!,
          zoom: _initialZoom,
        ),
        mapToolbarEnabled: false,
        mapType: MapType.normal,
        compassEnabled: false,
        rotateGesturesEnabled: false,
        zoomControlsEnabled: false,
        myLocationEnabled: false,
        myLocationButtonEnabled: false,
        onMapCreated: onMapCreated,
        markers: Set<Marker>.of(markers!.values),
      ),
    );
  }
}
