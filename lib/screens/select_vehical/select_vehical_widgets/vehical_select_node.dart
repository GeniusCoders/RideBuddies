import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VehicalSelectNode extends StatelessWidget {
  final String name;
  final String price;
  final String time;

  const VehicalSelectNode({this.name, this.price, this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        'https://www.uber-assets.com/image/upload/f_auto,q_auto:eco,c_fill,w_956,h_537/v1569015390/assets/fa/0e26a9-9d9d-4190-ad6d-a879ccef4266/original/Select.png',
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
