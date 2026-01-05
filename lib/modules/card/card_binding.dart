import 'package:get/get.dart';
import 'package:mysecondpr/modules/card/card_controller.dart';

class CardBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<CardController>(() => CardController());
  }
}