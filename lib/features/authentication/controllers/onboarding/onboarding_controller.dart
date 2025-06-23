import 'package:ecommerce_platform/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;


  void updatePageIndicator(index)=> currentPageIndex.value = index;


  void dotNavigationClick (index){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }


  void nextPage(){
    if( currentPageIndex.value == 2){
      Get.offAll(LoginScreen());
    }else{
      int page = currentPageIndex.value +1;
      pageController.animateToPage(
        page,
        duration:
        const Duration(milliseconds: 300), // Adjust the duration as needed
        curve: Curves.easeInOut, // Adjust the animation curve if desired
      );
    }
  }


  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}