import 'package:flutter/material.dart';
import 'package:untitled/utils/constants/colors.dart';

class TOutlinedButtonTheme {

  TOutlinedButtonTheme._();//To avoid creating instance

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(

      elevation: 0,
      foregroundColor: TColors.buttonSecondary,
      side: const BorderSide (color: TColors.buttonSecondary),
      textStyle: const TextStyle(
          fontSize: 16, color: TColors.buttonSecondary, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(

    style: OutlinedButton.styleFrom(

      foregroundColor: Colors.white,
      side: const BorderSide (color: Colors.white),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    ),
  );
}
