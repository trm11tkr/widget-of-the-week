import 'package:flutter/material.dart';
import 'package:widget_of_the_week/gen/assets.gen.dart';

class AppImageObject extends StatelessWidget {
  const AppImageObject({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 120,
      height: 120,
      child: Assets.images.hippo.image(),
    );
  }
}
