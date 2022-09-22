import 'package:flutter/material.dart';
import 'package:widget_of_the_week/pages/safe_area.dart';
import 'package:widget_of_the_week/widgets/app_list_tile.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Home',
      child: ListView(
        children: const [
          AppListTile(title: 'SafeArea', nextRouteName: SafeAreaPage.routeName),
        ],
      ),
    );
  }
}
