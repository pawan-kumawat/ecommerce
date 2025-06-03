import 'package:flutter/material.dart';

class TTextFormFieldTheme{
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    hintStyle: const TextStyle().copyWith(fontSize: 14,color: Colors.black),
    labelStyle:const TextStyle().copyWith(fontSize: 14,color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1,color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1,color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1,color: Colors.black12),
    ),
    errorBorder:  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1,color: Colors.red),
    ),
    focusedErrorBorder:  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 2,color: Colors.orange),
    ),

  );
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    hintStyle: const TextStyle().copyWith(fontSize: 14,color: Colors.black),
    labelStyle:const TextStyle().copyWith(fontSize: 14,color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1,color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1,color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1,color: Colors.black12),
    ),
    errorBorder:  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1,color: Colors.red),
    ),
    focusedErrorBorder:  OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 2,color: Colors.orange),
    ),

  );
}