import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ridebuddies/style/colors.dart';

class CustomAppBar extends PreferredSize {
  final String title;
  final double height;
  final List<Widget> actions;
  final isTitleCenter;
  const CustomAppBar(
      {this.isTitleCenter = true,
      this.height = kToolbarHeight,
      @required this.title,
      this.actions});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primary,
      centerTitle: isTitleCenter,
      title: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18.sp, fontWeight: FontWeight.w600, letterSpacing: .8),
        ),
      ),
      actions: actions,
    );
  }
}
