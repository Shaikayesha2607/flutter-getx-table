import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../table_controller.dart';
class CourseTable extends StatelessWidget {
  const CourseTable({super.key});

  @override
  Widget build(BuildContext context) {
      final theme = Theme.of(context);
    return GetBuilder<TableController>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                child:SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                    child:DataTableTheme(
                      data:DataTableThemeData(
                          dividerThickness: 1,
                          headingRowColor: WidgetStateProperty.all(
                            theme.colorScheme.primary.withAlpha(25),
                          ),
                        dataRowColor: WidgetStateProperty.resolveWith((states){
                          if (states.contains(WidgetState.selected)) {
                            return theme.colorScheme.primary.withAlpha(38);
                          }
                          return theme.colorScheme.surface;
                        }),
                        ),

                child: DataTable(
                headingTextStyle: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.primary,
                ),
                columns: const [
                  DataColumn(label: Text('ID')),
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Course')),
                ],
                rows: controller.items.map((item) {
                  return DataRow(
                    cells: [
                      DataCell(Text(item['id']!)),
                      DataCell(Text(item['Name']!)),
                      DataCell(Text(item['Course']!)),
                    ],
                  );
                }).toList(),
              ),

            ),
          ),
        )
          ),
        );
      },
    );
  }
}
