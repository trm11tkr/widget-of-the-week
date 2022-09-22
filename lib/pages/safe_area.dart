import 'package:flutter/material.dart';

class SafeAreaPage extends StatelessWidget {
  const SafeAreaPage({super.key});

  static const routeName = 'SafeArea';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          Expanded(
            child: ColoredBox(
              color: Colors.blue,
              child: Center(child: Text('SafeAreaなし')),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: SafeArea(
              child: ColoredBox(
                color: Colors.red,
                child: Center(child: Text('SafeAreaあり')),
              ),
            ),
          ),
        ],
      ),
      // AppBarを使用していないのでページ戻るボタンを実装
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
