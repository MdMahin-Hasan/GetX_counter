import 'package:get/get.dart';

class counterstate extends GetxController {
  RxInt count = 0.obs;

  void increment() {
    count.value++;  // increment counter
  }

  void Clear() {
    count.value = 0;  // ✅ reset counter properly
  }
}
