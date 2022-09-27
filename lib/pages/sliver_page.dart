import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class SliverPage extends StatelessWidget {
  const SliverPage({super.key});

  static const routeName = 'SliverList&Grid';

  @override
  Widget build(BuildContext context) {
    final listItem = [
      const ColoredBox(color: Colors.red),
      const ColoredBox(color: Colors.purple),
      const ColoredBox(color: Colors.green),
      const ColoredBox(color: Colors.orange),
      const ColoredBox(color: Colors.yellow),
      const ColoredBox(color: Colors.pink),
      const ColoredBox(color: Colors.cyan),
      const ColoredBox(color: Colors.indigo),
      const ColoredBox(color: Colors.blue),
    ];

    return AppScaffold(
      title: 'SliverList&Grid',
      child: CustomScrollView(
        slivers: [
          SliverGrid.count(
            crossAxisCount: 3,
            children: listItem,
          ),
          SliverFixedExtentList(
            itemExtent: 150,
            delegate: SliverChildListDelegate(listItem),
          ),
        ],
      ),
    );
  }
}
