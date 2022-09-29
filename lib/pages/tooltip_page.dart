import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class TooltipPage extends StatelessWidget {
  const TooltipPage({super.key});

  static const routeName = 'ToolTip';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'ToolTip',
      child: Center(
        child: Tooltip(
          message: 'ヘルプ',
          height: 100,
          verticalOffset: 50, // メッセージをどれだけ離して表示するか
          preferBelow: false, // メッセージを下方向に出す
          textStyle: const TextStyle(fontSize: 30, color: Colors.white),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(24),
          ),
          triggerMode: TooltipTriggerMode.tap,
          enableFeedback: true,
          padding: const EdgeInsets.all(24),
          margin: const EdgeInsets.all(8),
          child: const FittedBox(
            child: Icon(
              Icons.help,
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}
