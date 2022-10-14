import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class ReorderableListViewPage extends StatefulWidget {
  const ReorderableListViewPage({super.key});

  static const routeName = 'ReorderableListView';

  @override
  State<ReorderableListViewPage> createState() =>
      _ReorderableListViewPageState();
}

class _ReorderableListViewPageState extends State<ReorderableListViewPage> {
  final _items = List<Model>.generate(
    5,
    (int index) => Model(title: index.toString(), key: index.toString()),
  );

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'ReorderableListView',
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(_items.map((e) => e.title).toList().toString()),
          ),
          Expanded(
            child: ReorderableListView(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              onReorder: (int oldIndex, int newIndex) {
                setState(() {
                  // 移動前 index より移動後の index が大きい場合
                  // newIndex は +1されているので -1する必要がある
                  if (oldIndex < newIndex) {
                    newIndex -= 1;
                  }
                  final item = _items.removeAt(oldIndex);
                  _items.insert(newIndex, item);
                });
              },
              children: _items
                  .map(
                    (e) => SizedBox(
                      // Element が識別するために key は必須
                      key: ValueKey(e.key),
                      height: 100,
                      // ListTileだと color が反映されず
                      // Cardだと無駄に margin が入る
                      child: ColoredBox(
                        color: Colors.blue.shade100,
                        child: Center(
                          child: Text(e.title),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class Model {
  Model({
    required this.title,
    required this.key,
  });
  final String title;
  final String key;
}
