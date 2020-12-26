import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ridebuddies/style/colors.dart';

class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Icon(
        MdiIcons.chevronLeft,
        color: white,
        size: 30,
      ),
      backgroundColor: primary,
      radius: 20,
    );
  }
}
