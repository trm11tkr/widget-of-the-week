import 'package:flutter/material.dart';

class ValueListenableBuilderPage extends StatefulWidget {
  const ValueListenableBuilderPage({super.key});

  static const routeName = 'ValueListenableBuilder';

  @override
  State<ValueListenableBuilderPage> createState() =>
      _ValueListenableBuilderPageState();
}

class _ValueListenableBuilderPageState
    extends State<ValueListenableBuilderPage> {
  // カウンター
  final _counter = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();

    // Listenable なので addListener で監視もできる
    _counter.addListener(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ValueListenableBuilder')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            // _counterのvalue変更に応じて呼ばれる
            ValueListenableBuilder<int>(
              valueListenable: _counter,
              builder: (context, count, child) => Text('$count'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _counter.value++,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
