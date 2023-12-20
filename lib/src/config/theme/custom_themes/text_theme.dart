import 'package:ecommerce_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextTheme {
  CustomTextTheme._();

  //light Text Styles
  static final lightTheme = TextTheme(
    //Title Text style
    titleLarge:
        const TextStyle().copyWith(fontSize: 36, color: AppLightColors.accentColor1, fontWeight: FontWeight.bold),
    titleMedium: const TextStyle()
        .copyWith(fontSize: 32, color: const Color.fromRGBO(52, 152, 219, 1), fontWeight: FontWeight.bold),
    titleSmall:
        const TextStyle().copyWith(fontSize: 24, color: AppLightColors.primaryText, fontWeight: FontWeight.bold),

    // Body text style
    bodyLarge: const TextStyle().copyWith(fontSize: 20, color: AppLightColors.primaryText, fontWeight: FontWeight.bold),
    bodyMedium:
        const TextStyle().copyWith(fontSize: 16, color: AppLightColors.primaryText, fontWeight: FontWeight.bold),
    bodySmall: const TextStyle().copyWith(fontSize: 14, color: AppLightColors.primaryText, fontWeight: FontWeight.bold),

    // Lable text style
    labelLarge:
        const TextStyle().copyWith(fontSize: 12, color: AppLightColors.secondryText, fontWeight: FontWeight.bold),
    labelMedium:
        const TextStyle().copyWith(fontSize: 12, color: AppLightColors.secondryText, fontWeight: FontWeight.bold),
    labelSmall:
        const TextStyle().copyWith(fontSize: 12, color: AppLightColors.secondryText, fontWeight: FontWeight.bold),
  );

  //Dark Text styles
  static final darkTheme = TextTheme(
    //Title Text style
    titleLarge:
        const TextStyle().copyWith(fontSize: 36, color: AppDarkColors.accentColor1, fontWeight: FontWeight.bold),
    titleMedium:
        const TextStyle().copyWith(fontSize: 32, color: AppDarkColors.primaryText, fontWeight: FontWeight.bold),
    titleSmall: const TextStyle().copyWith(fontSize: 24, color: AppDarkColors.primaryText, fontWeight: FontWeight.bold),

    // Body text style
    bodyLarge: const TextStyle().copyWith(fontSize: 20, color: AppDarkColors.primaryText, fontWeight: FontWeight.bold),
    bodyMedium: const TextStyle().copyWith(fontSize: 16, color: AppDarkColors.primaryText, fontWeight: FontWeight.bold),
    bodySmall: const TextStyle().copyWith(fontSize: 14, color: AppDarkColors.primaryText, fontWeight: FontWeight.bold),

    // Lable text style
    labelLarge:
        const TextStyle().copyWith(fontSize: 12, color: AppDarkColors.secondryText, fontWeight: FontWeight.bold),
    labelMedium:
        const TextStyle().copyWith(fontSize: 12, color: AppDarkColors.secondryText, fontWeight: FontWeight.bold),
    labelSmall:
        const TextStyle().copyWith(fontSize: 12, color: AppDarkColors.secondryText, fontWeight: FontWeight.bold),
  );
}
