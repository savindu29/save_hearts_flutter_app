import 'package:flutter/material.dart';


class TBottomSheetTheme {
  TBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData( showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular (32)),
  ); // BottomSheet ThemeData
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData( showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(32)), ); // BottomSheet Theme Data
  }