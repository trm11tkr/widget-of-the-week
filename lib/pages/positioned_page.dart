import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class PositionedPage extends StatelessWidget {
  const PositionedPage({super.key});

  static const routeName = 'Positioned';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Positioned',
      child: Center(
        child: SizedBox(
          height: 700,
          width: double.infinity,
          child: Stack(
            children: const [
              _PositionedLabel(
                top: 0,
                right: 0,
                bottom: 300,
                left: 0,
                color: Colors.red,
              ),
              _PositionedLabel(
                top: 30,
                right: 30,
                bottom: 30,
                left: 30,
                color: Colors.pink,
              ),
              _PositionedLabel(
                top: 300,
                right: 20,
                bottom: 100,
                left: 0,
                color: Colors.blue,
              ),
              _PositionedLabel(
                top: 100,
                right: 150,
                bottom: 100,
                left: 0,
                color: Colors.green,
              ),
              _PositionedLabel(
                top: 700,
                right: 0,
                bottom: 10,
                left: 200,
                color: Colors.lightGreen,
              ),
              _PositionedLabel(
                top: 600,
                right: 200,
                bottom: 10,
                left: 5,
                color: Colors.deepPurple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PositionedLabel extends StatelessWidget {
  const _PositionedLabel({
    required this.top,
    required this.right,
    required this.bottom,
    required this.left,
    required this.color,
  });

  final double top;
  final double right;
  final double bottom;
  final double left;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
      child: ColoredBox(
        color: color.withOpacity(0.3),
      ),
    );
  }
}
