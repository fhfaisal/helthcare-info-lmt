import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:helthcare/utils/theme/theme.dart';

import 'app/routes/app_pages.dart';
import 'auth/authentication_repository.dart';

void main() async {
  await GetStorage.init(); // Initialize GetStorage
  Get.put(AuthenticationRepository());
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      theme: AppTheme.lightTheme,
      getPages: AppPages.routes,
      home: const Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
