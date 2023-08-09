import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  GoogleMapController? _controller;
  String? _mapStyle;
  Position position = Position(
      latitude: 18.508921,
      longitude: 73.926025,
      accuracy: 0,
      altitude: 0,
      heading: 0,
      speed: 0,
      speedAccuracy: 0,
      timestamp: DateTime.now());

  @override
  void initState() {
    _getCurrentPosition();
    super.initState();
    rootBundle.loadString('assets/map_style/map.txt').then((string) {
      _mapStyle = string;
    });
  }

  _getCurrentPosition() async {
    Position res = await Geolocator.getCurrentPosition();
    setState(() {
      position = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(
        target: LatLng(position.latitude, position.longitude),
        zoom: 14,
      ),
      zoomControlsEnabled: false,
      myLocationEnabled: true,
      myLocationButtonEnabled: false,
      onMapCreated: (GoogleMapController controller) {
        _controller = controller;
        _controller!.setMapStyle(_mapStyle);
        Future.delayed(Duration(milliseconds: 100), () {
          _controller!.animateCamera(CameraUpdate.newLatLng(
              LatLng(position.latitude, position.longitude)));
        });
      },
    );
  }
}
