import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ridebuddies/style/colors.dart';

class CancelSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.25,
      minChildSize: 0.25,
      maxChildSize: 0.25,
      builder: (BuildContext context, myscrollController) {
        return Container(
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(20.sp),
          ),
          padding: EdgeInsets.only(bottom: 10.h),
          child: ListView(
            shrinkWrap: true,
            controller: myscrollController,
            children: [
              Text(
                'Searching Ride',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'It may take some time',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Divider(
                thickness: .8,
              ),
              Padding(
                padding: EdgeInsets.all(16.0.sp),
                child: LinearProgressIndicator(),
              ),
              Padding(
                padding: EdgeInsets.all(16.0.sp),
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(14.w)),
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: Text(
                    'Cancel Ride'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 14.sp, letterSpacing: .4, color: white),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        );
      },
    );
  }
}
