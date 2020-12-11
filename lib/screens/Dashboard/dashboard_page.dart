import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ridebuddies/screens/Dashboard/dashboard.dart';
import 'package:ridebuddies/widgets/common/appbar/status_bar.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: getStatusBarStyle(), child: SafeArea(child: Dashboard())),
    );
  }
}
