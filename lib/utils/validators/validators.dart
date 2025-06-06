import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class TValidator{
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email is required';
    }
    final emailRegExp = RegExp(r'r[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address.';
    }
    return null;
  }
  static String? validatorPassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password is required.';
    }
    if(value.length <6){
      return 'Password must be at least 6 characters long.';
    }
    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must contains at least one uppercase letter.';
    }
    if(!value.contains(RegExp(r'[0=9]'))){
      return 'Password must contains at least one number.';
    }
    if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      return 'Password must contains at least one special character.';
    }
    return null;
  }
  static String? validatorPhoneNumber(String ? value){
    if(value == null || value.isEmpty){
      return 'Phone number is required.';
    }
    final phoneRegExp = RegExp(r'\d{10}$');

    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone number format (10 digits required).';
    }
return null;
  }

}