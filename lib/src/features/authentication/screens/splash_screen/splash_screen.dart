import 'package:dwumapa/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashScreenController.startAnimation();
    return Scaffold(
      backgroundColor: tPrimaryColor,
      body: Stack(
        children: const [
          Center(child: Image(image: AssetImage(tSplashImage)))
        ],
      ),
    );
  }

}
