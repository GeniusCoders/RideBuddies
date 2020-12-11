import 'package:flutter/material.dart';
import 'package:ridebuddies/screens/Dashboard/dashboard_widgets/current_location_button.dart';
import 'package:ridebuddies/widgets/textfields/search_place_text_field.dart';

class DashboardBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CurrentLocationButton(),
        SearchPlaceTextField(
          labelName: 'Where you want to go?',
        )
      ],
    );
  }
}
