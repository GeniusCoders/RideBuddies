import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ridebuddies/screens/login/login.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          child: Login()),
    );
  }
}
