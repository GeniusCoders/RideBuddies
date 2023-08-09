import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ridebuddies/style/colors.dart';
import 'package:ridebuddies/widgets/common/appbar/custom_app_bar.dart';

class SearchLocationAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(children: [
      IconButton(
          icon: Icon(
            MdiIcons.chevronLeft,
            color: primary,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
      Expanded(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Set Destination',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: .2),
          ),
        ),
      )
    ]);
  }
}
