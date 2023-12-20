import 'package:ecommerce_app/src/config/theme/custom_themes/app_bar_theme.dart';
import 'package:ecommerce_app/src/config/theme/custom_themes/elevated_btn_them.dart';
import 'package:ecommerce_app/src/config/theme/custom_themes/outline_btn_theme.dart';
import 'package:ecommerce_app/src/config/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerce_app/src/config/theme/custom_themes/text_theme.dart';
import 'package:ecommerce_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppLightColors.primaryColor,
    primaryColor: AppLightColors.primaryColor,
    dividerColor: AppLightColors.borderColor,
    elevatedButtonTheme: ElevatedBtnTheme.lightTheme,
    inputDecorationTheme: TextFieldTheme.lightTheme,
    outlinedButtonTheme: OutlinedBtnTheme.lightTheme,
    textTheme: CustomTextTheme.lightTheme,
    appBarTheme: CustomAppBarTheme.lightTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppDarkColors.primaryColor,
    primaryColor: AppDarkColors.primaryColor,
    dividerColor: AppDarkColors.borderColor,
    elevatedButtonTheme: ElevatedBtnTheme.darkTheme,
    inputDecorationTheme: TextFieldTheme.darkTheme,
    outlinedButtonTheme: OutlinedBtnTheme.darkTheme,
    textTheme: CustomTextTheme.darkTheme,
    appBarTheme: CustomAppBarTheme.darkTheme,
  );
}
