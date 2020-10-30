import 'package:flutter/material.dart';
import 'package:ridebuddies/pages/login/login_widgets/login_screen_bottom.dart';
import 'package:ridebuddies/style/colors.dart';
import 'package:ridebuddies/widgets/buttons/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ridebuddies/widgets/logos/logo.dart';
import 'package:ridebuddies/widgets/textfields/email_textfield.dart';
import 'package:ridebuddies/widgets/textfields/password_textfield.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(16.w, 40.h, 16.w, 16.w),
        alignment: Alignment.center,
        child: Column(
          children: [
            Logo(),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 320.h,
              margin: EdgeInsets.only(top: 20.h),
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10.w),
                boxShadow: [
                  const BoxShadow(
                      blurRadius: 6,
                      offset: Offset(0, 0),
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      spreadRadius: 0)
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EmailTextField(),
                  SizedBox(height: 10.h),
                  SizedBox(height: 20.h),
                  PasswordTextField(),
                  SizedBox(height: 30.h),
                  Button(
                    title: 'Login',
                    onPressed: () {},
                  ),
                  LoginScreenBottom()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
