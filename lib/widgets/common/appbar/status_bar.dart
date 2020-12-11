import 'dart:io';

import 'package:flutter/services.dart';

SystemUiOverlayStyle getStatusBarStyle() {
  return Platform.isAndroid
      ? SystemUiOverlayStyle.dark
      : SystemUiOverlayStyle.light;
}
