import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class RichTextPage extends StatelessWidget {
  const RichTextPage({super.key});

  static const routeName = 'RichText';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'RichText',
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: '・I learn '),
                  TextSpan(
                    text: 'Flutter',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' every day!'),
                ],
              ),
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: '・RichTextを使うと '),
                  TextSpan(
                    text: '色',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  TextSpan(text: ' も '),
                  TextSpan(
                    text: '斜体',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  TextSpan(text: ' も '),
                  TextSpan(text: 'サイズ', style: TextStyle(fontSize: 24)),
                  TextSpan(text: ' も自由自在に指定スタイルできる！'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
