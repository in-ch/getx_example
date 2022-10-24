import 'package:example/app/data/services/app_config/service.dart';
import 'package:example/app/data/services/auth/service.dart';
import 'package:example/app/modules/home/binding.dart';
import 'package:example/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Get.putAsync(() => AppConfigService().init());
  await Get.putAsync(() => AuthService().init());

  runApp(GetMaterialApp(
    initialBinding: HomeBinding(),
    initialRoute: Routes.home,
    getPages: AppPages.pages,
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
  ));
}
