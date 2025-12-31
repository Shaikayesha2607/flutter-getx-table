import 'package:get/get.dart';
import 'package:mysecondpr/bindings/card_binding.dart';
import 'package:mysecondpr/bindings/table_binding.dart';
import 'package:mysecondpr/views/card_screen.dart';
import 'package:mysecondpr/views/table_screen.dart';

class AppPages {
  static final routes =[
    GetPage(
      name:'/card',
      page:() => CardScreen(),
      binding:CardBinding(),
    ),
    GetPage(
        name: '/table',
        page: () => TableScreen(),
        binding: TableBinding()
    )
  ];
}