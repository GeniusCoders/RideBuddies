import 'package:flutter/material.dart';

import 'search_locations.dart';

class SearchLocationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SearchLocations()),
    );
  }
}
