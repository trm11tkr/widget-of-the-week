import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({super.key});

  static const routeName = 'Wrap';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Wrap',
      child: Center(
        child: ColoredBox(
          color: Colors.blue.shade100,
          child: Wrap(
            // 整列
            alignment: WrapAlignment.center,
            // children同士の幅
            spacing: 25,
            // 改行した時の幅
            runSpacing: 10,
            children: const [
              _CustomCard(title: 'baseball'),
              _CustomCard(title: 'soccer'),
              _CustomCard(title: 'tennis'),
              _CustomCard(title: 'hockey'),
              _CustomCard(title: 'badminton'),
              _CustomCard(title: 'table tennis'),
              _CustomCard(title: 'swimming'),
              _CustomCard(title: 'football'),
              _CustomCard(title: 'softball'),
              _CustomCard(title: 'volleyball'),
              _CustomCard(title: 'rugby'),
              _CustomCard(title: 'golf'),
              _CustomCard(title: 'athletics'),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(title),
      ),
    );
  }
}
