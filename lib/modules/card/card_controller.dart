import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysecondpr/models/users.dart';

class CardController extends GetxController{
  List<Users> users =[];

  void onInit(){
    super.onInit();
    print('ininit method');
    loadUsers();
  }

  void loadUsers(){
    users = [Users(name: 'Ayeshu', age: '23'),
            Users(name: 'Rahmat', age: '24'),
            Users(name: 'Asmaa', age: '23'),
            Users(name: 'AKKi', age: '27'),
            Users(name: 'Subha', age: '21'),
            Users(name: 'Nandu', age: '23'),
            Users(name: 'Chendu', age: '23'),
            Users(name: 'Mouni', age: '23'),
            Users(name: 'Rohi', age: '23'),
            Users(name: 'Niru', age: '23'),
            Users(name: 'Dolly', age: '23')];

    update();
  }

  void showPopup(){
    Get.dialog(
      AlertDialog(
        title: Text('popup'),
        content: Text('this is a modal popup'),
        actions: [
          TextButton(onPressed: ()=> Get.back(), child: Text('ok')),
        ],
      )
    );
  }
}