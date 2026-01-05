import 'package:get/get.dart';
import 'package:mysecondpr/modules/card/card_binding.dart';
import 'package:mysecondpr/modules/login/login_binding.dart';
import 'package:mysecondpr/modules/login/login_screen.dart';
import 'package:mysecondpr/modules/table/table_binding.dart';
import 'package:mysecondpr/modules/card/card_screen.dart';
import 'package:mysecondpr/modules/table/table_screen.dart';

class AppPages {
  static final routes =[
    GetPage(
      name:'/card',
      page:() => CardScreen(),
      binding:CardBinding(),
    ),
    GetPage(
        name: '/login',
        page: () => LoginScreen(),
        binding: LoginBinding()
    ),
    GetPage(
        name: '/table',
        page: () => TableScreen(),
        binding: TableBinding()
    ),

  ];
}