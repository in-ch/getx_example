import 'package:example/app/modules/animal_details/binding.dart';
import 'package:example/app/modules/animal_details/page.dart';
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
    GetPage(
        name: Routes.detail,
        page: () => const AnimalDetailsPage(),
        bindings: [AnimalDetailsBinding()])
  ];
}
