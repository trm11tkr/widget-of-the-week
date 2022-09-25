import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

const double _tableHeight = 32;

class TablePage extends StatelessWidget {
  const TablePage({super.key});

  static const routeName = 'Table';

  @override
  Widget build(BuildContext context) {
    final tableItem = <Map<String, dynamic>>[
      <String, dynamic>{
        'name': 'Ken',
        'description': 'like a soccer',
        'age': 23,
      },
      <String, dynamic>{
        'name': 'Emi',
        'description': 'love books',
        'age': 14,
      },
      <String, dynamic>{
        'name': 'Mary',
        'description': 'like singing',
        'age': 24,
      },
      <String, dynamic>{
        'name': 'Kevin',
        'description': 'diligent',
        'age': 53,
      },
    ];

    return AppScaffold(
      title: 'Table',
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Table(
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(50), // 幅固定
            1: FlexColumnWidth(), // flex = 1
            2: FlexColumnWidth(), // flex = 1
            3: FixedColumnWidth(50), // 幅固定
          },
          border: TableBorder.all(),
          children: <TableRow>[
            _TableHeader().build(),
            ...List.generate(
              tableItem.length,
              (index) => TableRow(
                decoration: BoxDecoration(
                  color: index.isOdd ? Colors.grey.shade300 : null,
                ),
                children: [
                  SizedBox(
                    height: _tableHeight,
                    child: Center(child: Text(index.toString())),
                  ),
                  SizedBox(
                    height: _tableHeight,
                    child: Center(
                      child: FittedBox(
                        child: Text(tableItem[index]['name'].toString()),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _tableHeight,
                    child: Center(
                      child: FittedBox(
                        child: Text(
                          tableItem[index]['description'].toString(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _tableHeight,
                    child: Center(
                      child: Text(tableItem[index]['age'].toString()),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _TableHeader {
  TableRow build() {
    return const TableRow(
      decoration: BoxDecoration(color: Colors.grey),
      children: [
        SizedBox(
          height: _tableHeight,
          child: Center(child: Text('No.')),
        ),
        SizedBox(
          height: _tableHeight,
          child: Center(child: Text('Name')),
        ),
        SizedBox(
          height: _tableHeight,
          child: Center(child: Text('Description')),
        ),
        SizedBox(
          height: _tableHeight,
          child: Center(child: Text('Age')),
        ),
      ],
    );
  }
}
