import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class DataTablePage extends StatefulWidget {
  const DataTablePage({super.key});

  static const routeName = 'DataTable';

  @override
  State<DataTablePage> createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  final List<Map<String, dynamic>> data = [
    <String, dynamic>{
      'name': 'Ai',
      'age': 40,
      'student': false,
      'gender': 'female',
      'favorite': 'soccer',
      'memo': 'nothing',
    },
    <String, dynamic>{
      'name': 'Jon',
      'age': 10,
      'student': true,
      'gender': 'male',
      'favorite': 'piano',
      'memo': 'nothing',
    },
    <String, dynamic>{
      'name': 'Jin',
      'age': 22,
      'student': true,
      'gender': 'male',
      'favorite': 'badminton',
      'memo': 'He likes driving',
    },
    <String, dynamic>{
      'name': 'Ken',
      'age': 20,
      'student': true,
      'gender': 'male',
      'favorite': 'baseball',
      'memo': 'nothing',
    },
    <String, dynamic>{
      'name': 'Mary',
      'age': 7,
      'student': true,
      'gender': 'female',
      'favorite': 'programing',
      'memo': 'She is in love with Ken'
    },
  ];

  int _currentSortColumn = 0;
  bool _isAscending = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'DataTable',
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          // 横画面でも横いっぱいに広げる
          constraints:
              BoxConstraints(minWidth: MediaQuery.of(context).size.width),
          child: DataTable(
            sortColumnIndex: _currentSortColumn,
            sortAscending: _isAscending,
            checkboxHorizontalMargin: 2,
            onSelectAll: (value) {},
            headingRowColor: MaterialStateProperty.all(Colors.amber[200]),
            dataTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
            columns: [
              const DataColumn(label: Text('Name')),
              DataColumn(
                label: const Text('Age'),
                onSort: (columnIndex, ascending) {
                  setState(() {
                    _currentSortColumn = columnIndex;

                    if (_isAscending == true) {
                      // 昇順にソート
                      _isAscending = false;
                      data.sort((a, b) {
                        final aAge = a['age'] as int;
                        final bAge = b['age'] as int;
                        return bAge.compareTo(aAge);
                      });
                    } else {
                      // 昇順にソート
                      _isAscending = true;
                      data.sort((a, b) {
                        final aAge = a['age'] as int;
                        final bAge = b['age'] as int;
                        return aAge.compareTo(bAge);
                      });
                    }
                  });
                },
              ),
              const DataColumn(label: Text('Student')),
              const DataColumn(label: Text('Gender')),
              const DataColumn(label: Text('Favorite')),
              const DataColumn(label: Text('Memo')),
            ],
            rows: List.generate(data.length, (index) {
              final cell = data[index];
              return DataRow(
                color: index.isOdd
                    ? MaterialStateProperty.all(Colors.grey[300])
                    : null,
                cells: cell.keys
                    .map((e) => DataCell(Text(cell[e].toString())))
                    .toList(),
              );
            }),
          ),
        ),
      ),
    );
  }
}
