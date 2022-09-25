
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/login/login_screen.dart';
import '../screens/on_boarding_screen/on_boarding_page_widget.dart';


class OnBoardingController extends GetxController{

  final controller = LiquidController();

  RxInt  currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnboardImage1,
            title: tOnBoardingTitle1,
            subTitle: tOnBoardingSubTitle1,

            bgColor: tOnBoardingPage1Color)),
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnboardImage2,
            title: tOnBoardingTitle2,
            subTitle: tOnBoardingSubTitle2,

            bgColor: tOnBoardingPage2Color)),
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnboardImage3,
            title: tOnBoardingTitle3,
            subTitle: tOnBoardingSubTitle3,
            bgColor: tOnBoardingPage3Color)),
  ];



   skip() {
     Get.to(() =>  const LoginScreen());
   }
   //=> controller.jumpToPage(page: 2);

   animateToNextSlide(){
     int nextPage = controller.currentPage + 1;
     controller.animateToPage(page: nextPage);
     // debugPrint(nextPage.toString());
     if (nextPage == 3){
       Get.to(() =>  const LoginScreen());
     }
   }

  onPageChangedCallback(int activePageIndex){
    currentPage.value = activePageIndex;
    debugPrint(currentPage.value.toString());

  }


}