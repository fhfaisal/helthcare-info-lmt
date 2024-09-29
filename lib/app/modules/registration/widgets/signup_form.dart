import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/validators/validators.dart';
import '../controllers/registration_controller.dart';

class AppSignupForm extends StatelessWidget {
  const AppSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegistrationController());
    return SingleChildScrollView(
      child: Form(
        key: controller.signUpFormKey,
        child: Column(
          children: [
            ///Username
            TextFormField(
              controller: controller.username.value,
              validator: (value) => AppValidators.validateEmptyText("Name", value),
              decoration: const InputDecoration(hintText: "Name", prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            ///Phone Number
            TextFormField(
              controller: controller.phone.value,
              validator: (value) => AppValidators.validatePhoneNumber(value),
              decoration: const InputDecoration(hintText: "Phone number", prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            DropdownButtonFormField<String>(
              validator: (value) => AppValidators.validateEmptyText('Gender', value),
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.man),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(width: 1, color: AppColors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(width: 1, color: AppColors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(width: 1, color: AppColors.grey),
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Iconsax.arrow_down_14,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              value: controller.selectedGender.isEmpty
                  ? null
                  : controller.selectedGender,
              hint: Text('Select Gender',style: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.tertiaryText),),
              items: <String>['Male', 'Female', 'Other'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                controller.selectedGender;
              },
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            ///Email
            TextFormField(
              controller: controller.email.value,
              validator: (value) => AppValidators.validateEmail(value),
              decoration: const InputDecoration(hintText: "Email", prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
      
            ///Password
            Obx(() => TextFormField(
                  controller: controller.password.value,
                  obscureText: controller.showPassword.value,
                  validator: (value) => AppValidators.validatePassword(value),
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Iconsax.password_check),
                      labelText: "Password",
                      suffixIcon: IconButton(
                        onPressed: () => controller.showPassword.value = !controller.showPassword.value,
                        icon: Icon(controller.showPassword.value ? Iconsax.eye_slash : Iconsax.eye),
                      )),
                )),
            const SizedBox(height: AppSizes.spaceBtwSections),
      
            ///Create account button
            Obx(() => SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.register(),
                child: controller.loading.value ? const Center(child: CircularProgressIndicator()) : const Text('Register'),
              ),
            ),)
          ],
        ),
      ),
    );
  }
}
