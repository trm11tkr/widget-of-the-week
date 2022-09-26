import 'package:flutter/material.dart';
import 'package:widget_of_the_week/gen/assets.gen.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class SliverAppBarPage extends StatelessWidget {
  const SliverAppBarPage({super.key});

  static const routeName = 'SliverAppBar';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'SliverAppBar',
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            // 最上部に戻らなくてもAppBarを拡大表示
            floating: true,
            // ヘッダーが中途半端な表示にならなくなる
            // floatingがtrueじゃないとエラー
            snap: true,
            // スクロールしてもタイトルの1行分を残す
            pinned: true,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: FittedBox(
                fit: BoxFit.fill,
                child: Assets.images.hippo.image(),
              ),
              title: const Text(
                'Hello.',
              ),
            ),
            expandedHeight: 200,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('Item #$index')),
              childCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
