import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_resume/route/route_helper.dart';
import 'package:my_resume/utils/theme.dart';
import 'package:my_resume/view/about_me.dart';
import 'package:my_resume/view/education.dart';
import 'package:my_resume/view/work_exp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // translations: Messages(), // your translations
      locale: const Locale(
          'en', 'UK'), // translations will be displayed in that locale
      fallbackLocale: const Locale('en', 'UK'),
      title: "appName".tr,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
   
      initialRoute:RouteHelper.getInitial(),
      getPages: RouteHelper.routes,
    );
  }
}
