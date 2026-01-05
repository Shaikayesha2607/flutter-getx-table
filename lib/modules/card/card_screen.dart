import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysecondpr/modules/card/card_controller.dart';
// import 'package:mysecondpr/views/table_screen.dart';

class CardScreen extends StatelessWidget {
   CardScreen({super.key});

    // final CardController controller = Get.put(CardController());
   final CardController controller = Get.find<CardController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
        centerTitle: true,
      ),
      body: GetBuilder<CardController>(
          builder:(_){
            return ListView.builder(
                itemCount: controller.users.length,
                itemBuilder: (context,index){
                  final user = controller.users[index];
                  return Card(
                    margin: EdgeInsets.all(16),
                    child: ListTile(
                      title:Text('name: ${user.name}'),
                      subtitle: Text('age: ${user.age}'),
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
        // Get.to(()=> TableScreen());
          Get.toNamed("/login");
      },
      backgroundColor: Colors.blue,
        child:Icon(Icons.table_chart),
      ),
    ) ;
  }
}
