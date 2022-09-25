import 'package:get/get.dart';
import '../screens/on_boarding_screen/on_boarding_screen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(() =>  const OnBoardingScreen());
  }
}
