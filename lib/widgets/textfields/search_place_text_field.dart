import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ridebuddies/screens/search_locations/search_locations_page.dart';
import 'package:ridebuddies/style/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPlaceTextField extends StatelessWidget {
  final String labelName;
  final IconData? icon;
  final Color backgroundColor;
  final Function()? onTap;
  final double iconSize;
  const SearchPlaceTextField(
      {required this.labelName,
      this.icon,
      this.backgroundColor = white,
      this.iconSize = 18,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SearchLocationsPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(12.w)),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                icon ?? MdiIcons.recordCircle,
                color: primary,
                size: iconSize,
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
                  hintText: labelName,
                  hintStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  border: InputBorder.none,
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
