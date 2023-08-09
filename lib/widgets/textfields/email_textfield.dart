import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIconConstraints: BoxConstraints(minWidth: 24, maxHeight: 20),
        hintText: 'Email',
        prefixIcon: Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.email,
          ),
        ),
      ),
    );
  }
}
