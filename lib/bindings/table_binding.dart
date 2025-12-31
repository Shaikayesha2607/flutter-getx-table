import 'package:get/get.dart';
import 'package:mysecondpr/controllers/table_controller.dart';

class TableBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<TableController>(() => TableController());
  }
}