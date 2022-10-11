import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class AspectRatioPage extends StatelessWidget {
  const AspectRatioPage({super.key});

  static const routeName = 'AspectRatio';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'AspectRatio',
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text('青色のContainer: width = 200, height = 200'),
              ),
              _AspectRatioBox(
                aspectRatio: 0.5,
              ),
              _AspectRatioBox(
                aspectRatio: 2,
              ),
              _AspectRatioBox(
                aspectRatio: 0.1,
                childWidth: 1000,
                childHeight: 1000,
              ),
              _AspectRatioBox(
                aspectRatio: 5,
                childWidth: 10,
                childHeight: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AspectRatioBox extends StatelessWidget {
  const _AspectRatioBox({
    required this.aspectRatio,
    this.childWidth = 200,
    this.childHeight = 200,
  });

  final double aspectRatio;

  final double? childWidth;
  final double? childHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          width: 200,
          height: 200,
          child: AspectRatio(
            aspectRatio: aspectRatio,
            child: Container(
              width: childWidth,
              height: childHeight,
              color: Colors.green,
            ),
          ),
        ),
        Text('Aspect Ratio: $aspectRatio'),
        Text('width: $childWidth'),
        Text('height: $childHeight'),
        const Divider(),
      ],
    );
  }
}
