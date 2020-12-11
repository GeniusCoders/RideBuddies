import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ridebuddies/screens/search_locations/search_locations_widgets/location_list_node.dart';
import 'package:ridebuddies/screens/search_locations/search_locations_widgets/search_location_app_bar.dart';
import 'package:ridebuddies/style/colors.dart';
import 'package:ridebuddies/widgets/textfields/search_place_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchLocations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchLocationAppBar(),
          Container(
            color: white,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              children: [
                SearchPlaceTextField(
                  labelName: 'Enter you location',
                  backgroundColor: lightWhite,
                ),
                SizedBox(height: 16.h),
                SearchPlaceTextField(
                  labelName: 'Enter you Destination',
                  backgroundColor: lightWhite,
                  icon: MdiIcons.mapMarker,
                  iconSize: 20,
                ),
                SizedBox(height: 10.h)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 14),
            child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) => LocationListNode()),
          )
        ],
      ),
    );
  }
}
