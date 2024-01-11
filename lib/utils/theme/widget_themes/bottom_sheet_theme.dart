import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class YbBottomSheetTheme {
  YbBottomSheetTheme._();

  static BottomSheetThemeData lighYbBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: YbColors.white,
    modalBackgroundColor: YbColors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: YbColors.black,
    modalBackgroundColor: YbColors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
