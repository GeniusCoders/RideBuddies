import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ridebuddies/screens/dashboard/dashboard_widgets/map_widget.dart';
import 'package:ridebuddies/screens/start_riding/start_ride_widgets/cancel_search.dart';
import 'package:ridebuddies/widgets/common/buttons/custom_back_button.dart';

class StartRide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          MapWidget(),
          Positioned(top: 40.h, left: 20.w, child: CustomBackButton()),
          // DriverDetails()
          // SelectVehical(),
          CancelSearch()
        ],
      ),
    );
  }
}
