import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get bebasNeue {
    return copyWith(
      fontFamily: 'Bebas Neue',
    );
  }

  TextStyle get azeretMono {
    return copyWith(
      fontFamily: 'Azeret Mono',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallBebasNeueWhiteA700 =>
      theme.textTheme.bodySmall!.bebasNeue.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallBlack90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
      );
// Label text style
  static get labelLargeBlack90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray100,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBluegray100_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray100,
      );
  static get labelLargeGray50 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50,
      );
  static get labelLargeRedA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRedA200_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.redA200,
      );
  static get labelMediumBlack90001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
      );
// Title text style
  static get titleLargeAzeretMono =>
      theme.textTheme.titleLarge!.azeretMono.copyWith(
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBluegray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumBebasNeueBlack90001 =>
      theme.textTheme.titleMedium!.bebasNeue.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBebasNeueGray50 =>
      theme.textTheme.titleMedium!.bebasNeue.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBebasNeueGray50 =>
      theme.textTheme.titleSmall!.bebasNeue.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray50 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
}
