import 'package:flutter/material.dart';
import 'package:vanisha_s_application2/core/utils/size_utils.dart';
import 'package:vanisha_s_application2/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelLargeBlueA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA200,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlueA200Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA200,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBlueA200 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueA200,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleMediumLora => theme.textTheme.titleMedium!.lora.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get lora {
    return copyWith(
      fontFamily: 'Lora',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
