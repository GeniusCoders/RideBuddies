import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ridebuddies/style/colors.dart';

class LocationListNode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(width: 20),
          Icon(MdiIcons.mapMarkerOutline, color: primary),
          SizedBox(width: 34),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Magarpatta',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Pune - Maharashtra')
            ]),
          )
        ],
      ),
    );
  }
}
