import 'package:get/get.dart';

class MainController extends GetxController {
  final RxInt number = 0.obs;

  void five() {
    number.value = 5;
  }

  void ten() {
    number.value = 10;
  }
}
