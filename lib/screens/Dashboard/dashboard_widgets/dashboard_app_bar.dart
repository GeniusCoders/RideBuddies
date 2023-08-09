import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ridebuddies/screens/Dashboard/dashboard_widgets/dashboard_app_bar_location_text.dart';
import 'package:ridebuddies/style/colors.dart';
import 'package:ridebuddies/widgets/common/appbar/custom_app_bar.dart';

class DashboardAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(children: [
      IconButton(
          icon: Icon(
            MdiIcons.menu,
            size: 26,
            color: primary,
          ),
          onPressed: () {}),
      Expanded(
          child: DashboardAppBarLocationText(
        locationText: 'Hadapsar, Pune',
      )),
      IconButton(
          icon: Icon(
            MdiIcons.bell,
            size: 24,
            color: primary,
          ),
          onPressed: () {}),
    ]);
  }
}
