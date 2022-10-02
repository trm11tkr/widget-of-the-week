import 'package:flutter/material.dart';
import 'package:widget_of_the_week/extension/context_extension.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

const boxListOf50x80 = [
  _CustomFittedBox(
    fit: BoxFit.none,
    sizeLabel: '50 x 80',
    height: 50,
    width: 80,
  ),
  _CustomFittedBox(
    sizeLabel: '50 x 80',
    height: 50,
    width: 80,
  ), // BoxFit.contain
  _CustomFittedBox(
    fit: BoxFit.cover,
    sizeLabel: '50 x 80',
    height: 50,
    width: 80,
  ),
  _CustomFittedBox(
    fit: BoxFit.fill,
    sizeLabel: '50 x 80',
    height: 50,
    width: 80,
  ),
  _CustomFittedBox(
    fit: BoxFit.fitHeight,
    sizeLabel: '50 x 80',
    height: 50,
    width: 80,
  ),
  _CustomFittedBox(
    fit: BoxFit.fitWidth,
    sizeLabel: '50 x 80',
    height: 50,
    width: 80,
  ),
  _CustomFittedBox(
    fit: BoxFit.scaleDown,
    sizeLabel: '50 x 80',
    height: 50,
    width: 80,
  ),
];

const boxListOf80x50 = [
  _CustomFittedBox(
    fit: BoxFit.none,
    sizeLabel: '80 x 50',
    height: 80,
    width: 50,
  ),
  _CustomFittedBox(
    sizeLabel: '80 x 50',
    height: 80,
    width: 50,
  ), // BoxFit.contain
  _CustomFittedBox(
    fit: BoxFit.cover,
    sizeLabel: '80 x 50',
    height: 80,
    width: 50,
  ),
  _CustomFittedBox(
    fit: BoxFit.fill,
    sizeLabel: '80 x 50',
    height: 80,
    width: 50,
  ),
  _CustomFittedBox(
    fit: BoxFit.fitHeight,
    sizeLabel: '80 x 50',
    height: 80,
    width: 50,
  ),
  _CustomFittedBox(
    fit: BoxFit.fitWidth,
    sizeLabel: '80 x 50',
    height: 80,
    width: 50,
  ),
  _CustomFittedBox(
    fit: BoxFit.scaleDown,
    sizeLabel: '80 x 50',
    height: 50,
    width: 80,
  ),
];

class FittedBoxPage extends StatelessWidget {
  const FittedBoxPage({super.key});

  static const routeName = 'FittedBox';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'FittedBox',
      child: context.isLandscape
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SingleChildScrollView(child: Row(children: boxListOf50x80)),
                SingleChildScrollView(child: Row(children: boxListOf80x50)),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SingleChildScrollView(child: Column(children: boxListOf50x80)),
                SingleChildScrollView(child: Column(children: boxListOf80x50)),
              ],
            ),
    );
  }
}

class _CustomFittedBox extends StatelessWidget {
  const _CustomFittedBox({
    this.fit = BoxFit.contain,
    required this.sizeLabel,
    required this.height,
    required this.width,
  });

  final BoxFit fit;
  final String sizeLabel;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all()),
          width: 100,
          height: 100,
          child: FittedBox(
              fit: fit,
              child: Container(
                height: height,
                width: width,
                color: Colors.red,
                child: Center(child: Text(sizeLabel)),
              ),),
        ),
        Text(fit.toString()),
        const SizedBox(
          width: 16,
          height: 16,
        )
      ],
    );
  }
}
