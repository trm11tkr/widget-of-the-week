import 'package:flutter/material.dart';

const List<BottomNavigationBarItem> _itemList = [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
  BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
];

const List<FloatingActionButtonLocation> _location = [
  FloatingActionButtonLocation.centerDocked,
  FloatingActionButtonLocation.centerFloat,
  FloatingActionButtonLocation.centerTop,
  FloatingActionButtonLocation.endDocked,
  FloatingActionButtonLocation.endFloat,
  FloatingActionButtonLocation.endTop,
  FloatingActionButtonLocation.miniCenterDocked,
  FloatingActionButtonLocation.miniCenterFloat,
  FloatingActionButtonLocation.miniCenterTop,
  FloatingActionButtonLocation.miniEndDocked,
  FloatingActionButtonLocation.miniEndFloat,
  FloatingActionButtonLocation.miniEndTop,
  FloatingActionButtonLocation.miniStartDocked,
  FloatingActionButtonLocation.miniStartFloat,
  FloatingActionButtonLocation.miniStartTop,
  FloatingActionButtonLocation.startDocked,
  FloatingActionButtonLocation.startFloat,
  FloatingActionButtonLocation.startTop,
];

class FloatingActionButtonPage extends StatefulWidget {
  const FloatingActionButtonPage({super.key});

  static const routeName = 'FloatingActionButton';

  @override
  State<FloatingActionButtonPage> createState() =>
      _FloatingActionButtonPageState();
}

class _FloatingActionButtonPageState extends State<FloatingActionButtonPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(_location[index].toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (index < _location.length - 1) {
            index++;
          } else {
            index = 0;
          }
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        items: _itemList,
      ),
      floatingActionButtonLocation: _location[index],
    );
  }
}
