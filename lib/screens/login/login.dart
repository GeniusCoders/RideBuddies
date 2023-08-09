import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ridebuddies/screens/Dashboard/dashboard_page.dart';
import 'package:ridebuddies/screens/login/login_widgets/login_headings.dart';
import 'package:ridebuddies/screens/login/login_widgets/mobile_number_field.dart';
import 'package:ridebuddies/style/colors.dart';
import 'package:ridebuddies/widgets/common/background_svg_map/background_svg_map.dart';
import 'package:ridebuddies/widgets/common/buttons/button.dart';
import 'package:ridebuddies/widgets/logos/logo.dart';

import 'login_widgets/login_terms_and_condition.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BackgroundSvgMap(
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
                  LoginTitle(),
                  SizedBox(height: 8.h),
                  MobileNumberField(),
                  SizedBox(height: 16),
                  Button(
                    title: 'Send OTP Code',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => DashboardPage()));
                    },
                  ),
                ],
              ),
            ),
            Spacer(),
            LoginTermsAndConditions()
          ],
        ),
      ),
    );
  }
}
