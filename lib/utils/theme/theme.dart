import 'package:ecom_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecom_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecom_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecom_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecom_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecom_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:ecom_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ecom_app/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ANBTextTheme.lightTextTheme,
   chipTheme: ANBChipTheme.lightChipTheme,
    appBarTheme: ANBAppBarTheme.lightAppBarTheme,
    checkboxTheme: ANBCheckboxTheme.lightCheckBoxTheme,
    bottomSheetTheme: ANBBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: ANBElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: ANBOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ANBTextFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ANBTextTheme.dartTextTheme,
    chipTheme: ANBChipTheme.darkChipTheme,
    appBarTheme: ANBAppBarTheme.dartAppBarTheme,
    checkboxTheme: ANBCheckboxTheme.darkCheckBoxTheme,
    bottomSheetTheme: ANBBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: ANBElevatedButtonTheme.dartElevatedButtonTheme,
    outlinedButtonTheme: ANBOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ANBTextFieldTheme.darkInputDecorationTheme,
  );
}