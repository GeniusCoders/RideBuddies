import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ridebuddies/style/colors.dart';

class LoginTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello, nice to meet you!!',
          style: TextStyle(color: mediumGrey, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 4.h),
        Text(
          'Most comfort journey for you.',
          style: TextStyle(
              fontSize: 20.sp, color: black, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 30.h),
        Text(
          'Enter Your Mobile Number',
          style: TextStyle(color: mediumGrey, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
