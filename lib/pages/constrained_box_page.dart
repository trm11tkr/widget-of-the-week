import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class ConstrainedBoxPage extends StatelessWidget {
  const ConstrainedBoxPage({super.key});

  static const routeName = 'ConstrainedBox';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'ConstainedBox',
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              _CustomContainer(),
              _CustomContainer(
                maxHeight: 50,
                maxWidth: 70,
              ),
              _CustomContainer(
                minHeight: 200,
                minWidth: 200,
              ),
              _CustomContainer(
                maxHeight: 250,
                maxWidth: 250,
                minHeight: 150,
                minWidth: 150,
                height: 1000,
                width: 1000,
              ),
              _CustomContainer(
                maxHeight: 250,
                maxWidth: 250,
                minHeight: 150,
                minWidth: 150,
                height: 1,
                width: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    this.maxHeight = double.infinity,
    this.maxWidth = double.infinity,
    this.minHeight = 0.0,
    this.minWidth = 0.0,
    this.height = 100,
    this.width = 100,
  });

  final double maxHeight;
  final double maxWidth;
  final double minHeight;
  final double minWidth;

  // Container Size
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: maxHeight,
              maxWidth: maxWidth,
              minHeight: minHeight,
              minWidth: minWidth,
            ),
            child: Container(
              height: height,
              width: width,
              decoration:
                  BoxDecoration(color: Colors.red, border: Border.all()),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Ma Height: $maxHeight'),
              Text('Max Width: $maxWidth'),
              Text('Min Height: $minHeight'),
              Text('Min Width: $minWidth'),
              Text('Box Height: $height'),
              Text('Box Width: $width'),
            ],
          ),
          const Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
