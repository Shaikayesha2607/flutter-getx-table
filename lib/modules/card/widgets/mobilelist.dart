import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysecondpr/modules/card/widgets/user_card_tile.dart';
import '../card_controller.dart';
class MobileList extends GetView<CardController> {
  const MobileList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: controller.users.length,
        itemBuilder: (_,index){

      return UserCardTile(user: controller.users[index]);
    });
  }
}
