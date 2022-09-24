import 'package:flutter/material.dart';
import 'package:widget_of_the_week/gen/assets.gen.dart';

class AppImageObject extends StatelessWidget {
  const AppImageObject({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Assets.images.hippo.image(),
    );
  }
}
