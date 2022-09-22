import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({super.key});

  static const routeName = 'Expanded';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Expanded',
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            // Case 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ColoredBox(
                  color: Colors.red,
                  child: Center(child: Text('not wrap')),
                ),
                ColoredBox(
                  color: Colors.green,
                  child: Center(child: Text('not wrap')),
                ),
                ColoredBox(
                  color: Colors.blue,
                  child: Center(child: Text('not wrap')),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Case 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ColoredBox(
                  color: Colors.red,
                  child: Center(child: Text('not wrap')),
                ),
                Expanded(
                  child: ColoredBox(
                    color: Colors.green,
                    child: Center(child: Text('wrap Expanded')),
                  ),
                ),
                ColoredBox(
                  color: Colors.blue,
                  child: Center(child: Text('not wrap')),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Case 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ColoredBox(
                  color: Colors.red,
                  child: Center(child: Text('not wrap')),
                ),
                Expanded(
                  child: ColoredBox(
                    color: Colors.green,
                    child: Center(child: Text('wrap Expanded')),
                  ),
                ),
                Expanded(
                  child: ColoredBox(
                    color: Colors.blue,
                    child: Center(child: Text('wrap Expanded')),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Case 4
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Expanded(
                  child: ColoredBox(
                    color: Colors.red,
                    child: Center(child: Text('wrap Expanded')),
                  ),
                ),
                Expanded(
                  child: ColoredBox(
                    color: Colors.green,
                    child: Center(child: Text('wrap Expanded')),
                  ),
                ),
                Expanded(
                  child: ColoredBox(
                    color: Colors.blue,
                    child: Center(child: Text('wrap Expanded')),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Case 5
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Expanded(
                  // デフォルトでflex: 1
                  child: ColoredBox(
                    color: Colors.red,
                    child: Center(child: Text('wrap Expanded(flex:1)')),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ColoredBox(
                    color: Colors.green,
                    child: Center(child: Text('wrap Expanded(flex:2)')),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: ColoredBox(
                    color: Colors.blue,
                    child: Center(child: Text('wrap Expanded(flex:3)')),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
