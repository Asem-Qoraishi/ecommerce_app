import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:ecommerce_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

/// -- Dark and Light Elevated Button Theme
class ElevatedBtnTheme {
  ElevatedBtnTheme._();

  /// Elevated Button's Ligh Theme
  static final lightTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppLightColors.buttonColor,
        textStyle: const TextStyle(fontSize: 16, color: Colors.white),
        foregroundColor: Colors.white,
        // side: const BorderSide(color: AppLightColors.borderColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.p14),
        ),
        padding: const EdgeInsets.symmetric(vertical: Sizes.p16, horizontal: Sizes.p20)),
  );

  /// Elevated Button's Dark Theme
  static final darkTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppDarkColors.buttonColor,
        textStyle: const TextStyle(fontSize: 16, color: Colors.white),
        foregroundColor: Colors.white,
        // side: const BorderSide(color: AppDarkColors.borderColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.p14),
        ),
        padding: const EdgeInsets.symmetric(vertical: Sizes.p16, horizontal: Sizes.p20)),
  );
}
