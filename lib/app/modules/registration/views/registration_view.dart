
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../controllers/registration_controller.dart';
import '../widgets/signup_form.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Registration'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///Title
                Text("Please provide the required information", style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: AppSizes.spaceBtwSections),
          
                ///Form
                const AppSignupForm(),
                const SizedBox(height: AppSizes.spaceBtwSections),
              ],
            ),
          ),
        ));
  }
}
