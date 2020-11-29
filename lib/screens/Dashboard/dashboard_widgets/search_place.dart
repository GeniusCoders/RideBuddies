import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ridebuddies/screens/Dashboard/dashboard_widgets/current_location_button.dart';
import 'package:ridebuddies/style/colors.dart';

class SearchPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CurrentLocationButton(),
        Container(
          width: MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
              color: white, borderRadius: BorderRadius.circular(12.w)),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(
                  MdiIcons.recordCircle,
                  color: primary,
                  size: 18,
                ),
              ),
              Container(
                  height: 50,
                  child: VerticalDivider(
                    color: Color(0xFFF1F1F1),
                    thickness: 2,
                    width: 0,
                  )),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Where you want to go?',
                    hintStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    border: InputBorder.none,
                  ),
                ),
              )),
            ],
          ),
        ),
      ],
    );
  }
}
