import 'package:get/get.dart';
import 'package:mysecondpr/modules/table/table_controller.dart';

class TableBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<TableController>(() => TableController());
  }
}