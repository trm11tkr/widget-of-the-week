import 'package:flutter/material.dart';
import 'package:widget_of_the_week/extension/context_extension.dart';
import 'package:widget_of_the_week/widgets/app_image_object.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class OpacityPage extends StatelessWidget {
  const OpacityPage({super.key});

  static const routeName = 'Opacity';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Opacity',
      child: Center(
        child: Wrap(
          direction: context.isLandscape ? Axis.vertical : Axis.horizontal,
          children: const [
            _LabelTile(opacity: 1),
            _LabelTile(opacity: 0.8),
            _LabelTile(opacity: 0.6),
            _LabelTile(opacity: 0.4),
            _LabelTile(opacity: 0.2),
            _LabelTile(opacity: 0),
            _WithBackGroundLabelTile(opacity: 1),
            _WithBackGroundLabelTile(opacity: 0.8),
            _WithBackGroundLabelTile(opacity: 0.6),
            _WithBackGroundLabelTile(opacity: 0.4),
            _WithBackGroundLabelTile(opacity: 0.2),
            _WithBackGroundLabelTile(opacity: 0),
          ],
        ),
      ),
    );
  }
}

class _LabelTile extends StatelessWidget {
  const _LabelTile({required this.opacity});

  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Opacity(
          opacity: opacity,
          child: const AppImageObject(),
        ),
        Text('Opacity: $opacity'),
      ],
    );
  }
}

class _WithBackGroundLabelTile extends StatelessWidget {
  const _WithBackGroundLabelTile({required this.opacity});

  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Stack(
          children: [
            const AppImageObject(),
            Opacity(
              opacity: opacity,
              child: _MyGradientWidget(opacity: opacity),
            ),
          ],
        ),
        Text('Opacity: $opacity'),
      ],
    );
  }
}

class _MyGradientWidget extends StatelessWidget {
  const _MyGradientWidget({required this.opacity});

  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.yellow],
        ),
      ),
    );
  }
}
