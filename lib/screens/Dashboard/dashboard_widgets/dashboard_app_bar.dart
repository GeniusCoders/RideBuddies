import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ridebuddies/style/colors.dart';

class DashboardAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              icon: Icon(
                MdiIcons.menu,
                size: 26,
                color: primary,
              ),
              onPressed: () {}),
          Expanded(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                'Hadapsar, Pune',
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 14, color: black),
              )
            ])
          ])),
          IconButton(
              icon: Icon(
                MdiIcons.bell,
                size: 24,
                color: primary,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
