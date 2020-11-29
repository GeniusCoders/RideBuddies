import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  GoogleMapController _controller;
  String _mapStyle;
  Position position;

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
    return Container(
      child: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 10.4746,
            ),
            zoomControlsEnabled: false,
            myLocationEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
              _controller.setMapStyle(_mapStyle);
            },
          ),
        ],
      ),
    );
  }
}
