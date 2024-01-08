import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class TElevatedButtonTheme {
  TElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: YbColors.light,
      backgroundColor: YbColors.primary,
      disabledForegroundColor: YbColors.darkGrey,
      disabledBackgroundColor: YbColors.buttonDisabled,
      side: const BorderSide(color: YbColors.primary),
      padding: const EdgeInsets.symmetric(vertical: YbSizes.buttonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(YbSizes.buttonRadius)),
      textStyle: const TextStyle(fontSize: 16, color: YbColors.textWhite, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: YbColors.light,
      backgroundColor: YbColors.primary,
      disabledForegroundColor: YbColors.darkGrey,
      disabledBackgroundColor: YbColors.darkerGrey,
      side: const BorderSide(color: YbColors.primary),
      padding: const EdgeInsets.symmetric(vertical: YbSizes.buttonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(YbSizes.buttonRadius)),
      textStyle: const TextStyle(fontSize: 16, color: YbColors.textWhite, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
    ),
  );
}
