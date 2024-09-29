import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../auth/authentication_repository.dart';
import '../../../../utils/snakbar/snackbar.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final email = TextEditingController().obs;
  final password = TextEditingController().obs;
  final hidePass = false.obs;
  final loading = false.obs;
  final AuthenticationRepository _authRepo = Get.put(AuthenticationRepository());
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  /// Login using email and password
  Future<void> loginWithEmailAndPassword() async {
    try {
      ///Check Form Validations
      if (!loginFormKey.currentState!.validate()) {
        return;
      }
      loading.value = true;
      // Navigate to the home page
      Get.offAllNamed(Routes.HOME);
      _authRepo.storage.write("IS_LOGIN", true);
    } catch (e) {
      SnackBarMessage.warning(title: 'Oh Snap', message: e.toString());
    }
    loading.value = false;
  }
}
