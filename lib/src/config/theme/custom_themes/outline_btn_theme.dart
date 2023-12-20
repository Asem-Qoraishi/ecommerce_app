import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:ecommerce_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class OutlinedBtnTheme {
  static final lightTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 16, color: AppLightColors.primaryText),
      foregroundColor: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: Sizes.p16, horizontal: Sizes.p20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.p16),
      ),
      side: const BorderSide(width: 1.5, color: AppLightColors.buttonColor),
    ),
  );

  static final darkTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 16, color: AppDarkColors.primaryText),
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: Sizes.p16, horizontal: Sizes.p20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.p16),
      ),
      side: const BorderSide(width: 1.5, color: AppLightColors.buttonColor),
    ),
  );
}
