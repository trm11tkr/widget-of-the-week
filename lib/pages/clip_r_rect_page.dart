import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class ClipRRectPage extends StatelessWidget {
  const ClipRRectPage({super.key});

  static const routeName = 'ClipRRect';

  @override
  Widget build(BuildContext context) {
    final clipItems = [
      const _ClipObject(label: 'non-clip'),
      const ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: _ClipObject(
          label: 'ClipRRect',
          content: 'Radius: 10',
        ),
      ),
      const ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: _ClipObject(
          label: 'ClipRRect',
          content: 'Radius: 20',
        ),
      ),
      const ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: _ClipObject(
          label: 'ClipRRect',
          content: 'Radius: 30',
        ),
      ),
      const ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        child: _ClipObject(
          label: 'ClipRRect',
          content: 'Radius: 40',
        ),
      ),
      const ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        child: _ClipObject(
          label: 'ClipRRect',
          content: 'Radius: 50',
        ),
      ),
    ];

    return AppScaffold(
      title: 'ClipRRect',
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: SingleChildScrollView(
          child: Center(
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: clipItems,
            ),
          ),
        ),
      ),
    );
  }
}

class _ClipObject extends StatelessWidget {
  const _ClipObject({required this.label, this.content});

  final String label;
  final String? content;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label),
          if (content != null) Text(content!),
        ],
      ),
    );
  }
}
