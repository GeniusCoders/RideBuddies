import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

final ThemeData darkTheme = ThemeData.dark().copyWith(
  //fontFamily: 'OpenSans',
  scaffoldBackgroundColor: kMainTextColor,
  secondaryHeaderColor: kWhiteColor,
  primaryColor: kMainColor,
  bottomAppBarColor: kMainTextColor,
  dividerColor: Color(0x1f000000),
  disabledColor: kDisabledColor,
  cardColor: Color(0xff212321),
  hintColor: kLightTextColor,
  indicatorColor: kMainColor,
  bottomAppBarTheme: BottomAppBarTheme(color: kMainColor),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    height: 33,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        side: BorderSide(color: kMainColor)),
    alignedDropdown: false,
    buttonColor: kMainColor,
    disabledColor: kDisabledColor,
  ),
  appBarTheme: AppBarTheme(
    color: kTransparentColor,
    elevation: 0.0,
  ),
  //text theme which contains all text styles
);

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  secondaryHeaderColor: kMainTextColor,
  primaryColor: kMainColor,
  bottomAppBarColor: kWhiteColor,
  dividerColor: Color(0x1f000000),
  disabledColor: kDisabledColor,
  cardColor: kCardBackgroundColor,
  hintColor: kLightTextColor,
  indicatorColor: kMainColor,
  bottomAppBarTheme: BottomAppBarTheme(color: kMainColor),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    height: 33,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        side: BorderSide(color: kMainColor)),
    alignedDropdown: false,
    buttonColor: kMainColor,
    disabledColor: kDisabledColor,
  ),
  appBarTheme: AppBarTheme(
    color: kTransparentColor,
    elevation: 0.0,
  ),
  //text theme which contains all text styles
);

//text style of continue bottom bar
