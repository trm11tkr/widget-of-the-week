import 'package:flutter/material.dart';
import 'package:widget_of_the_week/pages/expanded_page.dart';
import 'package:widget_of_the_week/pages/floating_action_button_page.dart';
import 'package:widget_of_the_week/pages/opacity_page.dart';
import 'package:widget_of_the_week/pages/safe_area.dart';
import 'package:widget_of_the_week/pages/wrap_page.dart';
import 'package:widget_of_the_week/widgets/app_list_tile.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Home',
      child: ListView(
        reverse: true,
        children: const [
          AppListTile(title: 'SafeArea', nextRouteName: SafeAreaPage.routeName),
          AppListTile(title: 'Expanded', nextRouteName: ExpandedPage.routeName),
          AppListTile(title: 'Wrap', nextRouteName: WrapPage.routeName),
          AppListTile(title: 'Opacity', nextRouteName: OpacityPage.routeName),
          AppListTile(
            title: 'FloatingActionButton',
            nextRouteName: FloatingActionButtonPage.routeName,
          ),
        ],
      ),
    );
  }
}
