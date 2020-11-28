import 'package:flutter/material.dart';
import 'package:ridebuddies/style/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundMap extends StatelessWidget {
  final Widget child;

  const BackgroundMap({@required this.child});

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Container(
      width: _width,
      height: _height,
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: primaryLight,
        image: DecorationImage(
            image: AssetImage(
              'assets/svg/map.png',
            ),
            fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
