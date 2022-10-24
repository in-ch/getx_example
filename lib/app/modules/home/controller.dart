import 'package:example/app/data/enum/animals.dart';
import 'package:example/app/data/services/app_config/service.dart';
import 'package:example/app/modules/home/repository.dart';
import 'package:example/core/utils/functions/verify_response.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  final HomeRepository repository;
  HomeController(this.repository);
  AppConfigService? config;
  final darkMode = false.obs;
  final type = Animals.Todos.obs;

  @override
  void onInit() {
    config = Get.find<AppConfigService>();
    darkMode.value = config!.darkMode();
    getDogs();
    super.onInit();
  }

  changeTheme() {
    config!.changeDarkMode(Get.isDarkMode ? false : true);
    darkMode.value = config!.darkMode();
  }

  logout() async {
    print('로그아웃');
  }

  getDogs() async {
    final _ = await repository.getDogs();
    if (verifyresponse(_)) {
      change(_, status: RxStatus.error(_.message));
      return Get.snackbar('Erro', _.message);
    } else {
      change(_, status: RxStatus.success());
    }
  }
}
