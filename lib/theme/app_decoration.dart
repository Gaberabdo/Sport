import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Black decorations
  static BoxDecoration get black => BoxDecoration(
        color: appTheme.black90001,
      );
// Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.08),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA200,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.08),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {}
