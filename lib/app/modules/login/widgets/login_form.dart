
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/validators/validators.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class AppLoginForm extends GetView<LoginController> {
  const AppLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Email
            TextFormField(
              controller: controller.email.value,
              validator: (value) => AppValidators.validateEmail(value),
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: "Email"),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),

            ///Password
            Obx(() => TextFormField(
              controller: controller.password.value,
              obscureText: controller.hidePass.value,
              validator: (value) => AppValidators.validatePassword(value),
              decoration: InputDecoration(
                  prefixIcon: const Icon(Iconsax.password_check),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePass.value = !controller.hidePass.value,
                    icon: Icon(controller.hidePass.value?Iconsax.eye_slash:Iconsax.eye),
                  )),
            )),
            const SizedBox(height: AppSizes.spaceBtwInputFields / 2),

            ///Sign in button
            SizedBox(
              width: double.infinity,
              child: Obx(() => ElevatedButton(
                onPressed: () =>controller.loginWithEmailAndPassword(),
                child:controller.loading.value?const Center(child: CircularProgressIndicator(),) :const Text('Login'),
              )),
            ),
            const SizedBox(height: AppSizes.sm),
            Divider(),
            Center(child: Text("Don't have an account?",style: Theme.of(context).textTheme.bodyMedium,)),
            Divider(),
            ///Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.toNamed(Routes.REGISTRATION),
                child: const Text('Sign Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
