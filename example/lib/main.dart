import 'package:example/app_pages.dart';
import 'package:example/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';
import 'network_client.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Discussion Module',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MainPage.routeName,
      getPages: appPages,
      initialBinding: BindingsBuilder(() {
        Get.put<NetworkClient>(
          DioClientImpl(),
          permanent: true,
        );
      }),
    );
  }
}
