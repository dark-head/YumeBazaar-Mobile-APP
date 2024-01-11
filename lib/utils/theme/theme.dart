import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../theme/widget_themes/appbar_theme.dart';
import '../theme/widget_themes/bottom_sheet_theme.dart';
import '../theme/widget_themes/checkbox_theme.dart';
import '../theme/widget_themes/chip_theme.dart';
import '../theme/widget_themes/elevated_button_theme.dart';
import '../theme/widget_themes/outlined_button_theme.dart';
import '../theme/widget_themes/text_field_theme.dart';
import '../theme/widget_themes/text_theme.dart';

class YbAppTheme {
  YbAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: YbColors.grey,
    brightness: Brightness.light,
    primaryColor: YbColors.primary,
    textTheme: YbTextTheme.lighYbTextTheme,
    chipTheme: YbChipTheme.lighYbChipTheme,
    scaffoldBackgroundColor: YbColors.white,
    appBarTheme: YbAppBarTheme.lighYbAppBarTheme,
    checkboxTheme: YbCheckboxTheme.lighYbCheckboxTheme,
    bottomSheetTheme: YbBottomSheetTheme.lighYbBottomSheetTheme,
    elevatedButtonTheme: YbElevatedButtonTheme.lighYbElevatedButtonTheme,
    outlinedButtonTheme: YbOutlinedButtonTheme.lighYbOutlinedButtonTheme,
    inputDecorationTheme: YbTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: YbColors.grey,
    brightness: Brightness.dark,
    primaryColor: YbColors.primary,
    textTheme: YbTextTheme.darkTextTheme,
    chipTheme: YbChipTheme.darkChipTheme,
    scaffoldBackgroundColor: YbColors.black,
    appBarTheme: YbAppBarTheme.darkAppBarTheme,
    checkboxTheme: YbCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: YbBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: YbElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: YbOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: YbTextFormFieldTheme.darkInputDecorationTheme,
  );
}
