import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ridebuddies/screens/start_riding/start_ride_widgets/driver_details_widgets/circle_icon.dart';
import 'package:ridebuddies/screens/start_riding/start_ride_widgets/driver_details_widgets/driver_name_car_details.dart';
import 'package:ridebuddies/style/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DriverDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.26,
      minChildSize: 0.26,
      maxChildSize: 0.58,
      builder: (BuildContext context, myscrollController) {
        return Container(
          color: white,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: ListView(
            shrinkWrap: true,
            controller: myscrollController,
            children: [
              Text(
                'Your ride is arriving in 10 min',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Divider(
                thickness: .8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://randomuser.me/api/portraits/men/31.jpg'),
                      radius: 36,
                    ),
                    SizedBox(width: 20),
                    DriverNameCarDetails(),
                    CircleIcon(
                      icon: MdiIcons.message,
                    ),
                    SizedBox(width: 14),
                    CircleIcon(
                      icon: MdiIcons.phone,
                    )
                  ],
                ),
              ),
              Divider(
                thickness: .8,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Your Current Trip',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        MdiIcons.recordCircle,
                        color: primary,
                        size: 12,
                      ),
                      SizedBox(height: 6),
                      SizedBox(
                        height: 60,
                        child: VerticalDivider(
                          color: primary,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(height: 6),
                      Icon(
                        MdiIcons.mapMarker,
                        color: primary,
                        size: 16,
                      )
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Katraj, Ambegaon',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Main Rd, Singhgad College',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                letterSpacing: .4,
                                color: mediumGrey),
                          ),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Katraj, Ambegaon',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Main Rd, Singhgad College',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                letterSpacing: .4,
                                color: mediumGrey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              RaisedButton(
                padding: EdgeInsets.all(14.w),
                child: Text(
                  'Cancel Ride'.toUpperCase(),
                  style: TextStyle(fontSize: 14.sp, letterSpacing: .4),
                ),
                elevation: 0,
                textColor: Colors.red,
                onPressed: () {},
              )
            ],
          ),
        );
      },
    );
  }
}
