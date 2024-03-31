import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/theme/app_colors.dart';

double textFieldRadius = 10;

class AppDecoration {
  static InputBorder kInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(textFieldRadius),
    borderSide: const BorderSide(
      color: AppColors.kPrimaryColor,
      width: 1.0,
    ),
  );
  static InputBorder kErrorInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(textFieldRadius),
    borderSide: const BorderSide(
      color: AppColors.kErrorColor,
      width: 1.0,
    ),
  );
  static Decoration kNueShadowDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(300),
    color: AppColors.kWhiteColor,
    boxShadow: [
      const BoxShadow(
        color: Colors.black12,
        offset: Offset(6, 6),
        spreadRadius: 1,
        blurRadius: 4,
      ),
      BoxShadow(
        color: AppColors.kSecondaryColor.withOpacity(0.1),
        offset: const Offset(-6, -6),
        spreadRadius: 1,
        blurRadius: 4,
      )
    ],
  );
}
