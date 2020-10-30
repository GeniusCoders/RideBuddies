import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          prefixIconConstraints: BoxConstraints(minWidth: 24, maxHeight: 20),
          hintText: 'Password',
          prefixIcon: Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.lock,
            ),
          ),
        ));
  }
}
