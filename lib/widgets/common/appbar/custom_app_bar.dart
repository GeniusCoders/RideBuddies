import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ridebuddies/style/colors.dart';

class CustomAppBar extends StatelessWidget {
  final List<Widget> children;

  CustomAppBar({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      color: white,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center, children: children),
    );
  }
}
