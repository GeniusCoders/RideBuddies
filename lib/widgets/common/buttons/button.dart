import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ridebuddies/style/colors.dart';

class Button extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final bool swipeColor;
  const Button(
      {required this.onPressed, required this.title, this.swipeColor = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 52.h,
        padding: EdgeInsets.all(10.h),
        decoration: BoxDecoration(
            color: swipeColor ? white : primary,
            borderRadius: BorderRadius.all(Radius.circular(6.h))),
        child: Text(
          title,
          style: TextStyle(
              color: swipeColor ? primary : white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              letterSpacing: .4),
        ),
      ),
    );
  }
}
