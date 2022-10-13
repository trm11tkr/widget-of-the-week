import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class PlaceHolderPage extends StatelessWidget {
  const PlaceHolderPage({super.key});

  static const routeName = 'Placeholder';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Placeholder',
      child: SingleChildScrollView(
        child: Column(
          children: const [
            _TemporaryTile(),
            Placeholder(strokeWidth: 10),
          ],
        ),
      ),
    );
  }
}

class _TemporaryTile extends StatelessWidget {
  const _TemporaryTile();

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Placeholder(
        fallbackHeight: 50,
        fallbackWidth: 50,
        child: Text('画像'),
      ),
      title: Placeholder(child: Text('タイトル')),
      trailing: Placeholder(
        color: Colors.red,
        fallbackHeight: 50,
        fallbackWidth: 50,
        child: Text('アイコン'),
      ),
    );
  }
}
