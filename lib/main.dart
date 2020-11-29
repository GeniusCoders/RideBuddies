import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ridebuddies/screens/login/login_page.dart';
import 'package:ridebuddies/style/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: white,
      statusBarIconBrightness:
          Platform.isAndroid ? Brightness.dark : Brightness.light));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ride Buddies',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: MaterialColor(0xFF33a852, getSwatch(primary)),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Source Sans Pro'),
      home: Builder(builder: (context) {
        final width = MediaQuery.of(context).size.width;
        if (width < 600) {
          ScreenUtil.init(context,
              designSize: Size(360.0, 780.0), allowFontScaling: true);
        } else {
          ScreenUtil.init(context,
              designSize: Size(900.0, 1224.0), allowFontScaling: true);
        }
        return LoginPage();
      }),
    );
  }
}
