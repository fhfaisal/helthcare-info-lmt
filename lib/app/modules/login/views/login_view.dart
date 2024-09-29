
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../../utils/constants/sizes.dart';
import '../controllers/login_controller.dart';
import '../widgets/login_form.dart';
import '../widgets/login_header.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///Logo Title & Subtitle
            AppLoginHeader(),
            ///Form
            AppLoginForm(),
          ],
        ),
      ),
    );
  }
}
