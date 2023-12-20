import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:ecommerce_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

/// Configs for input fields
class TextFieldTheme {
  TextFieldTheme._();

  static final lightTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: Sizes.p16, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: Sizes.p16, color: Colors.black),
    errorStyle: const TextStyle(),
    contentPadding: const EdgeInsets.symmetric(horizontal: Sizes.p20, vertical: Sizes.p16),
    floatingLabelStyle: const TextStyle().copyWith(fontSize: Sizes.p16, color: AppLightColors.secondryText),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.p14),
      borderSide: const BorderSide(color: AppLightColors.borderColor),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.p14),
      borderSide: const BorderSide(color: AppLightColors.borderColor),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.p14),
      borderSide: const BorderSide(color: Colors.black),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.p14),
      borderSide: const BorderSide(color: AppLightColors.errorColor),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.p14),
      borderSide: const BorderSide(width: 2, color: AppLightColors.errorColor),
    ),
  );

  static final darkTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: Sizes.p16, color: AppDarkColors.secondryText),
    hintStyle: const TextStyle().copyWith(fontSize: Sizes.p16, color: AppDarkColors.secondryText),
    contentPadding: const EdgeInsets.symmetric(horizontal: Sizes.p20, vertical: Sizes.p16),
    errorStyle: const TextStyle(),
    floatingLabelStyle: const TextStyle().copyWith(fontSize: Sizes.p14, color: AppDarkColors.secondryText),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.p14),
      borderSide: const BorderSide(color: AppDarkColors.borderColor),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.p14),
      borderSide: const BorderSide(color: AppDarkColors.borderColor),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.p14),
      borderSide: const BorderSide(color: Colors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.p14),
      borderSide: const BorderSide(color: AppDarkColors.errorColor),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.p14),
      borderSide: const BorderSide(width: 2, color: AppDarkColors.errorColor),
    ),
  );
}
