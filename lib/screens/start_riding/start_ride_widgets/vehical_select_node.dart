import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VehicalSelectNode extends StatelessWidget {
  final String name;
  final String price;
  final String time;
  final String assets;
  const VehicalSelectNode(
      {required this.name,
      required this.price,
      required this.time,
      required this.assets});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        'assets/$assets',
        width: 70.w,
        height: 70.w,
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(time),
      trailing: Text(
        '₹ $price',
        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
      ),
    );
  }
}
