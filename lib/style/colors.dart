import 'dart:ui';
import 'package:flutter/material.dart';

Map<int, Color> getSwatch(Color color) {
  final hslColor = HSLColor.fromColor(color);
  final lightness = hslColor.lightness;
  final lowDivisor = 6;

  final highDivisor = 5;

  final lowStep = (1.0 - lightness) / lowDivisor;
  final highStep = lightness / highDivisor;

  return {
    50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
    100: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
    200: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
    300: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
    400: (hslColor.withLightness(lightness + lowStep)).toColor(),
    500: (hslColor.withLightness(lightness)).toColor(),
    600: (hslColor.withLightness(lightness - highStep)).toColor(),
    700: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
    800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
    900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
  };
}

const Color primary = Color(0xFF33a852);
const Color primaryLight = Color(0xFF32A663);

const Color lightBlack = Color(0xFF242424);
const Color black = Color(0xFF000000);
const Color white = Color(0xFFFFFFFF);

const Color mediumGrey = Color(0xFF707070);
const Color lightWhite = Color(0xFFF8F8F8);

const Color darkGrey = Color(0xFF707070);
