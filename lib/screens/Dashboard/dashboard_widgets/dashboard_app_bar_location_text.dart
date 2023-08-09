import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ridebuddies/style/colors.dart';

class DashboardAppBarLocationText extends StatelessWidget {
  final String locationText;

  const DashboardAppBarLocationText({required this.locationText});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        MdiIcons.mapMarker,
        color: primary,
      ),
      SizedBox(width: 4),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Location',
          style: TextStyle(fontSize: 8),
        ),
        Text(
          locationText,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 14, color: black),
        )
      ])
    ]);
  }
}
