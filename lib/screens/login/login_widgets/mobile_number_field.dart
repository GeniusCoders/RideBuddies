import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ridebuddies/style/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileNumberField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: lightWhite),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0.w),
              child: SvgPicture.asset('assets/svg/IN.svg'),
            ),
            SizedBox(width: 6.w),
            Text(
              '+91',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: mediumGrey),
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: TextFormField(
                keyboardType: TextInputType.phone,
                style: TextStyle(
                    color: black,
                    fontWeight: FontWeight.w600,
                    letterSpacing: .4),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10)
                ],
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
          ],
        ));
  }
}
