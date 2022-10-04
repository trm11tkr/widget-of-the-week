import 'dart:math' as math;

import 'package:flutter/material.dart';

class DismissiblePage extends StatefulWidget {
  const DismissiblePage({super.key});

  static const routeName = 'Dismissible';

  @override
  State<DismissiblePage> createState() => _DismissiblePageState();
}

class _DismissiblePageState extends State<DismissiblePage> {
  final _colorList = List.generate(
    10,
    (_) => ListTile(
      tileColor:
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1),
    ),
  );

  void _addList() {
    setState(() {
      _colorList.add(
        ListTile(
          tileColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dismissible')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final key = _colorList[index].toString();
          return Dismissible(
            key: ValueKey(key),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                _colorList.removeAt(index);
              });
            },
            background: const ColoredBox(
              color: Colors.green,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.check),
                ),
              ),
            ),
            secondaryBackground: const ColoredBox(
              color: Colors.red,
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.delete),
                ),
              ),
            ),
            child: _colorList[index],
          );
        },
        itemCount: _colorList.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addList,
        child: const Icon(Icons.add),
      ),
    );
  }
}
