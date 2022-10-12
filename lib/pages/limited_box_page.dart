import 'dart:math' as math;

import 'package:flutter/material.dart';

final _containerList = List.generate(
  10,
  // ignore: use_colored_box
  (index) => Container(
    color:
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1),
  ),
);

final _limitedContainerList = List.generate(
  10,
  (index) => LimitedBox(
    maxHeight: 100,
    maxWidth: 50,
    // ignore: use_colored_box
    child: Container(
      color:
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1),
    ),
  ),
);

class LimitedBoxPage extends StatefulWidget {
  const LimitedBoxPage({super.key});

  static const routeName = 'LimitedBox';

  @override
  State<LimitedBoxPage> createState() => _LimitedBoxPageState();
}

class _LimitedBoxPageState extends State<LimitedBoxPage> {
  bool isLimited = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LimitedBox'),
      ),
      body: ListView(
        children: isLimited ? _limitedContainerList : _containerList,
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          setState(() {
            isLimited = !isLimited;
          });
        },
        child: Text(isLimited ? 'Wrap LimitedBox' : 'no Wrap'),
      ),
    );
  }
}
