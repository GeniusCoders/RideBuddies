import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ridebuddies/style/colors.dart';

class RidePaymentRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: ListTile(
        tileColor: white,
        leading: Icon(
          MdiIcons.cash,
          color: Colors.green,
          size: 38.sp,
        ),
        title: Text(
          'Cash',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
        trailing: Icon(MdiIcons.chevronRight),
      ),
    );
  }
}
