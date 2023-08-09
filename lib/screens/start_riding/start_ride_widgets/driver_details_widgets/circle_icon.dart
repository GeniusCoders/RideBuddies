import 'package:flutter/material.dart';
import 'package:ridebuddies/style/colors.dart';

class CircleIcon extends StatelessWidget {
  final IconData icon;

  const CircleIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: primary.withOpacity(.1),
      child: IconButton(
          icon: Icon(
            icon,
            color: primary,
            size: 20,
          ),
          onPressed: null),
    );
  }
}
