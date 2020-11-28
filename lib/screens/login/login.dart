import 'package:flutter/material.dart';
import 'package:ridebuddies/screens/login/login_widgets/login_headings.dart';
import 'package:ridebuddies/screens/login/login_widgets/mobile_number_field.dart';
import 'package:ridebuddies/style/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ridebuddies/widgets/common/background_map/background_map.dart';
import 'package:ridebuddies/widgets/logos/logo.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackgroundMap(
      child: Column(
        children: [
          Logo(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 26.h),
            decoration: BoxDecoration(
                color: white, borderRadius: BorderRadius.circular(8.w)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeadings(),
                SizedBox(height: 8.h),
                MobileNumberField()
              ],
            ),
          )
        ],
      ),
    );
  }
}
