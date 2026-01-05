import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'table_controller.dart';

class TableScreen extends StatelessWidget {
  TableScreen({super.key});

  // Inject controller (dependency)
  // final TableController controller = Get.put(TableController());
  final TableController controller = Get.find<TableController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Items Table'),
          leading: IconButton(onPressed: (){
            Get.back();
    }, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GetBuilder<TableController>(
          builder: (_) {
            return DataTable(
              columns: const [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Name')),
              ],
              rows: controller.items
                  .map(
                    (item) => DataRow(
                  cells: [
                    DataCell(Text(item['id']!)),
                    DataCell(Text(item['Name']!)),
                  ],
                ),
              )
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
