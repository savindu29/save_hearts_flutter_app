import 'package:get/get.dart';

import '../../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  void login(){
    Get.offAll(const LoginScreen());
  }
  void signUp(){}
}
