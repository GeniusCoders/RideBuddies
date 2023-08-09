import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ridebuddies/screens/start_riding/start_ride.dart';

class StartRidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        child: StartRide(),
      ),
    );
  }
}
