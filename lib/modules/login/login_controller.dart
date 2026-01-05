import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  //form key
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  //Text controllers
  final emailcontroller =TextEditingController();
  final passwordcontroller = TextEditingController();

  void submit(){
    if(formKey.currentState!.validate()){
      Get.snackbar("Success", "form validated",
      snackPosition: SnackPosition.BOTTOM);
      Get.toNamed('/table');
    }
  }
  @override
  void onClose() {
    // TODO: implement onClose
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.onClose();
  }
}