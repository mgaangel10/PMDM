import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_valencia/Pages/base_fuentes_response/base_fuentes_response.dart';
import 'package:google_maps_valencia/Pages/base_fuentes_response/result.dart';
import 'package:http/http.dart' as http;

class GoogleMaps extends StatelessWidget {
  final double lat;
  final double long;
  const GoogleMaps({super.key, required this.lat, required this.long});

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
