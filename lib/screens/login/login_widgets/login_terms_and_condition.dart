import 'package:flutter/material.dart';
import 'package:ridebuddies/style/colors.dart';

class LoginTermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "By creating account, you agree to our Terms of Service and Privacy Policy",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: white,
            height: 1.4,
            shadows: <Shadow>[
              Shadow(color: darkGrey, offset: Offset(0, 3), blurRadius: 6)
            ]),
        textAlign: TextAlign.center,
      ),
    );
  }
}
