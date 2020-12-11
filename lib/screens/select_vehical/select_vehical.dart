import 'package:flutter/material.dart';
import 'package:ridebuddies/screens/select_vehical/select_vehical_widgets/vehical_select_node.dart';
import 'package:ridebuddies/style/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ridebuddies/widgets/common/buttons/button.dart';

class SelectVehical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F5F5),
      child: DraggableScrollableSheet(
        initialChildSize: 0.4,
        minChildSize: 0.4,
        maxChildSize: 0.4,
        builder: (BuildContext context, myscrollController) {
          return Container(
            color: white,
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: ListView(
              shrinkWrap: true,
              controller: myscrollController,
              children: [
                VehicalSelectNode(
                  name: 'Primium Car',
                  time: '10:20 PM',
                  price: '200',
                ),
                SizedBox(height: 16.h),
                VehicalSelectNode(
                  name: 'Rikshaw',
                  time: '12:00 AM',
                  price: '400',
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Button(title: 'Confirm Rikshaw'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
