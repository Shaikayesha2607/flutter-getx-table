import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysecondpr/controllers/card_controller.dart';
import 'package:mysecondpr/views/table_screen.dart';

class CardScreen extends StatelessWidget {
   CardScreen({super.key});

    final CardController controller = Get.put(CardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
        centerTitle: true,
      ),
      body: GetBuilder<CardController>(
          builder:(controller){
            return ListView.builder(
                itemCount: controller.users.length,
                itemBuilder: (context,index){
                  return Card(
                    margin: EdgeInsets.all(16),
                    child: ListTile(
                      title:Text('name: ${controller.users[index].name}'),
                      subtitle: Text('age: ${controller.users[index].age}'),
                      onTap: (){
                        controller.showPopup();
                      },
                    ),
                  );
                }
            );
          }

      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(()=> TableScreen());
      },
      backgroundColor: Colors.blue,
        child:Icon(Icons.table_chart),
      ),
    ) ;
  }
}
