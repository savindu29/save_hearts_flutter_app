import 'package:flutter/material.dart';
import 'package:untitled/utils/theme/custom_theme/appbar_theme.dart';
import 'package:untitled/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:untitled/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:untitled/utils/theme/custom_theme/chip_theme.dart';
import 'package:untitled/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:untitled/utils/theme/custom_theme/text_filed_theme.dart';
import 'package:untitled/utils/theme/custom_theme/text_theme.dart';

import 'custom_theme/elevated_button_theme.dart';

class TAppTheme{
  TAppTheme._();
  static  ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.redAccent,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: TChipTheme.lightChipTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.redAccent,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    chipTheme: TChipTheme.darkChipTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
  );
}