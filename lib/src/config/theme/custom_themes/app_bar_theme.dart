import 'package:ecommerce_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBarTheme {
  // AppBar light theme
  static const lightTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppLightColors.primaryText, size: 24),
    actionsIconTheme: IconThemeData(color: AppLightColors.primaryText, size: 24),
    titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: AppLightColors.primaryText),
  );

  // AppBar dark theme
  static const darkTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppDarkColors.primaryText, size: 24),
    actionsIconTheme: IconThemeData(color: AppDarkColors.primaryText, size: 24),
    titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: AppDarkColors.primaryText),
  );
}
