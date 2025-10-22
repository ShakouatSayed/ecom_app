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
    textTheme: TTextTheme.lightTextTheme,
   chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.dartTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.dartAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.dartElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
  );
}