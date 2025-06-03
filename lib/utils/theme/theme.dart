import 'package:ecommerce_platform/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:ecommerce_platform/utils/theme/custom_themes/botton_sheet_theme.dart';
import 'package:ecommerce_platform/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce_platform/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecommerce_platform/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce_platform/utils/theme/custom_themes/outlined_button_Theme.dart';
import 'package:ecommerce_platform/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerce_platform/utils/theme/custom_themes/text_themes.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme =ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor:Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipThemeData.lightChipThemeData,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor:Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipThemeData.darkChipThemeData,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme
  );
}