import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMaps extends StatelessWidget {
  const GoogleMaps({super.key});

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: const CameraPosition(
        target: LatLng(37.3804865526399, -6.007223622451029),
      ),
      markers: <Marker>{
        const Marker(
            markerId: MarkerId('<MARKER_ID>'),
            position: LatLng(37.3804865526399, -6.007223622451029))
      },
    );
  }
}
