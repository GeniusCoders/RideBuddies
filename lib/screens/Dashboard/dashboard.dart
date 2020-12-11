import 'package:flutter/material.dart';
import 'package:ridebuddies/screens/Dashboard/dashboard_widgets/map_widget.dart';
import 'dashboard_widgets/dashboard_app_bar.dart';
import 'dashboard_widgets/dashboard_bottom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          DashboardAppBar(),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                MapWidget(),
                Positioned(bottom: 40.h, child: DashboardBottom())
              ],
            ),
          )
        ],
      ),
    );
  }
}
