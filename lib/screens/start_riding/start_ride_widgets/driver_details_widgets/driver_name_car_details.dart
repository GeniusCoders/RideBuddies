import 'package:flutter/material.dart';
import 'package:ridebuddies/style/colors.dart';

class DriverNameCarDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Manoj Kumar",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Text(
            "Maruti Suzuki",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: mediumGrey),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Color(0xFFE8E8E8),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(
              "MH 12 UB 1235",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
