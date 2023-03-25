import 'package:calculator/controllers/calculate.dart';
import 'package:get/get.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalculateController>(() => CalculateController(), fenix: true);
  }
}
