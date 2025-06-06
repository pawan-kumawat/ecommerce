import 'package:flutter/material.dart';

class TChipThemeData{
  TChipThemeData._();


  static ChipThemeData lightChipThemeData = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle:const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding:const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
    checkmarkColor: Colors.white,
  );
  static ChipThemeData darkChipThemeData = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
    checkmarkColor: Colors.white,
  );

}