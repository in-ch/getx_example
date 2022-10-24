import 'package:example/app/modules/home/binding.dart';
import 'package:example/app/modules/home/page.dart';
import 'package:get/get.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.home,
        page: () => const HomePage(),
        bindings: [HomeBinding()]),
  ];
}
