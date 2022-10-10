import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_image_object.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class SpacerPage extends StatelessWidget {
  const SpacerPage({super.key});

  static const routeName = 'Spacer';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Spacer',
      child: SingleChildScrollView(
        child: Column(
          children: [
            _RowWithLabel(
              row: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  AppImageObject(color: Colors.red),
                  AppImageObject(color: Colors.green),
                  AppImageObject(color: Colors.blue),
                ],
              ),
              description: 'spaceAround',
            ),
            _RowWithLabel(
              row: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppImageObject(color: Colors.red),
                  AppImageObject(color: Colors.green),
                  AppImageObject(color: Colors.blue),
                ],
              ),
              description: 'spaceBetween',
            ),
            _RowWithLabel(
              row: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  AppImageObject(color: Colors.red),
                  AppImageObject(color: Colors.green),
                  AppImageObject(color: Colors.blue),
                ],
              ),
              description: 'spaceEvenly',
            ),
            _RowWithLabel(
              row: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  AppImageObject(color: Colors.red),
                  Spacer(),
                  AppImageObject(color: Colors.green),
                  Spacer(),
                  AppImageObject(color: Colors.blue),
                ],
              ),
              description: '間にSpacer',
            ),
            _RowWithLabel(
              row: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  AppImageObject(color: Colors.red),
                  Spacer(flex: 3),
                  AppImageObject(color: Colors.green),
                  Spacer(),
                  AppImageObject(color: Colors.blue),
                ],
              ),
              description: '間にSpacer(左側は flex:3)',
            ),
          ],
        ),
      ),
    );
  }
}

class _RowWithLabel extends StatelessWidget {
  const _RowWithLabel({
    required this.row,
    required this.description,
  });

  final Row row;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          row,
          Text(description),
        ],
      ),
    );
  }
}
