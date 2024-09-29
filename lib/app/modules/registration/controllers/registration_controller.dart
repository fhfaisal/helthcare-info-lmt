
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:helthcare/auth/authentication_repository.dart';

import '../../../../utils/snakbar/snackbar.dart';
import '../../../routes/app_pages.dart';

class RegistrationController extends GetxController {
  /// Text Controller
  final username = TextEditingController().obs;
  final phone = TextEditingController().obs;
  final email = TextEditingController().obs;
  final password = TextEditingController().obs;
  String selectedGender='';
  final loading=false.obs;

  ///Form Key
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  ///Variables
  final showPassword = true.obs;

  /// Register user in the Firebase Authentication & Save user data in the Firebase
  void register() async {
    if (!signUpFormKey.currentState!.validate()) return;
    try {
      loading.value=true;
      AuthenticationRepository.instance.screenRedirect();
      loading.value=false;
      //show success message
      SnackBarMessage.success(title: "Registration Complete",message: 'Welcome ${username.value.text}, ');
    } catch (e) {
      SnackBarMessage.error(title: "Error", message: e);
    }
  }
}
