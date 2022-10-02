import 'package:flutter/material.dart';
import 'package:widget_of_the_week/extension/context_extension.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

final listItem = [
  const ColoredBox(color: Colors.red, child: Text('Red Tile')),
  const ColoredBox(color: Colors.purple, child: Text('purple Tile')),
  const ColoredBox(color: Colors.green, child: Text('green Tile')),
  const ColoredBox(color: Colors.orange, child: Text('Red Tile')),
  const ColoredBox(color: Colors.yellow, child: Text('Red Tile')),
  const ColoredBox(color: Colors.pink, child: Text('Red Tile')),
  const ColoredBox(color: Colors.cyan, child: Text('Red Tile')),
  const ColoredBox(color: Colors.indigo, child: Text('Red Tile')),
  const ColoredBox(color: Colors.blue, child: Text('Red Tile')),
];

class AbsorbPointerPage extends StatefulWidget {
  const AbsorbPointerPage({super.key});

  static const routeName = 'AbsorbPointer';

  @override
  State<AbsorbPointerPage> createState() => _AbsorbPointerPageState();
}

class _AbsorbPointerPageState extends State<AbsorbPointerPage> {
  bool isAbsorb = false;
  String get listLabel => isAbsorb ? 'スクロールできない' : 'スクロールできる';
  String get buttonLabel => isAbsorb ? '押せない' : '押せる';

  @override
  Widget build(BuildContext context) {
    final listItem = [
      ColoredBox(color: Colors.red, child: Text(listLabel)),
      ColoredBox(color: Colors.purple, child: Text(listLabel)),
      ColoredBox(color: Colors.green, child: Text(listLabel)),
      ColoredBox(color: Colors.orange, child: Text(listLabel)),
      ColoredBox(color: Colors.yellow, child: Text(listLabel)),
      ColoredBox(color: Colors.pink, child: Text(listLabel)),
      ColoredBox(color: Colors.cyan, child: Text(listLabel)),
      ColoredBox(color: Colors.indigo, child: Text(listLabel)),
      ColoredBox(color: Colors.blue, child: Text(listLabel)),
    ];
    return AppScaffold(
      title: 'AbsorbPointer',
      child: Stack(
        children: [
          AbsorbPointer(
            absorbing: isAbsorb,
            child: Column(
              children: [
                SizedBox(
                  height: context.deviceHeight * 0.6,
                  child: ListView(itemExtent: 150, children: listItem),
                ),
                InkWell(
                  highlightColor: Colors.blue,
                  splashColor: Colors.red,
                  child: SizedBox(
                    width: double.infinity,
                    height: context.deviceHeight * 0.25,
                    child: Center(
                      child: Text(
                        buttonLabel,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  onTap: () {
                    // タップを視認したいだけなので処理は無し
                  },
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isAbsorb = !isAbsorb;
                });
              },
              child: Text('absorbing: $isAbsorb'),
            ),
          ),
        ],
      ),
    );
  }
}
