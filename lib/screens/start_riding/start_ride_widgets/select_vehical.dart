import 'package:flutter/material.dart';
import 'package:ridebuddies/screens/start_riding/start_ride_widgets/ride_payment_row.dart';
import 'package:ridebuddies/screens/start_riding/start_ride_widgets/vehical_select_node.dart';
import 'package:ridebuddies/style/colors.dart';
import 'package:ridebuddies/widgets/common/buttons/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectVehical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.41,
      minChildSize: 0.41,
      maxChildSize: 0.41,
      builder: (BuildContext context, myscrollController) {
        return Container(
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(20.ssp),
          ),
          padding: EdgeInsets.only(bottom: 10.h),
          child: ListView(
            shrinkWrap: true,
            controller: myscrollController,
            children: [
              VehicalSelectNode(
                name: 'Primium Car',
                time: '10:20 PM',
                price: '200',
                assets: 'car_model_01.png',
              ),
              SizedBox(height: 12.h),
              VehicalSelectNode(
                name: 'Rikshaw',
                time: '12:00 AM',
                price: '400',
                assets: 'car_model.png',
              ),
              SizedBox(
                height: 10.h,
              ),
              RidePaymentRow(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: Button(title: 'Confirm Rikshaw'),
              ),
              SizedBox(height: 16.h),
            ],
          ),
        );
      },
    );
  }
}
