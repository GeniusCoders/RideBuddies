import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ridebuddies/style/colors.dart';

class LoginScreenBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 22.0.h),
      child: Text(
        'Forgot Password?',
        style: TextStyle(
            fontSize: 18.w, color: primary, fontWeight: FontWeight.w600),
      ),
    );
  }
}
