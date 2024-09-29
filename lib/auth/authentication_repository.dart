import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../app/routes/app_pages.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  ///local storage
  final storage = GetStorage();

  @override
  void onReady() {
    screenRedirect();
    FlutterNativeSplash.remove();
  }

  /// Check the user's session
  screenRedirect() async {
    final appStatus = await storage.read("IS_LOGIN");
    if (appStatus == true) {
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }
  }
}
