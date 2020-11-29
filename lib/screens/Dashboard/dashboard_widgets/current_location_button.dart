import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ridebuddies/style/colors.dart';

class CurrentLocationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: CircleAvatar(
        backgroundColor: white,
        radius: 22,
        child: IconButton(
          icon: Icon(
            MdiIcons.crosshairsGps,
            color: black,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
