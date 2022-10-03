import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class AlignPage extends StatelessWidget {
  const AlignPage({super.key});

  static const routeName = 'Align';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Align',
      child: Stack(
        children: const [
          _PositionedLabel(alignment: Alignment.topLeft),
          _PositionedLabel(alignment: Alignment.topRight),
          _PositionedLabel(alignment: Alignment.bottomLeft),
          _PositionedLabel(alignment: Alignment.bottomRight),
          _PositionedLabel(alignment: Alignment(0, 0.2)),
          _PositionedLabel(alignment: Alignment(0, 0.5)),
          _PositionedLabel(alignment: Alignment(0, 0.8)),
          _PositionedLabel(alignment: Alignment(1, 0.4)),
          _PositionedLabel(alignment: Alignment(-1, 0.4)),
          _PositionedLabel(alignment: Alignment(0, -0.6)),
          _PositionedLabel(alignment: Alignment(-0.6, -0.5)),
        ],
      ),
    );
  }
}

class _PositionedLabel extends StatelessWidget {
  const _PositionedLabel({required this.alignment});

  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Text(alignment.toString()),
    );
  }
}
