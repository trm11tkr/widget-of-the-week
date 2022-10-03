import 'package:flutter/material.dart';
import 'package:widget_of_the_week/pages/absorb_pointer_page.dart';
import 'package:widget_of_the_week/pages/back_drop_filter_page.dart';
import 'package:widget_of_the_week/pages/clip_r_rect_page.dart';
import 'package:widget_of_the_week/pages/custom_paint.dart';
import 'package:widget_of_the_week/pages/expanded_page.dart';
import 'package:widget_of_the_week/pages/fitted_box_page.dart';
import 'package:widget_of_the_week/pages/floating_action_button_page.dart';
import 'package:widget_of_the_week/pages/home_page.dart';
import 'package:widget_of_the_week/pages/opacity_page.dart';
import 'package:widget_of_the_week/pages/safe_area.dart';
import 'package:widget_of_the_week/pages/sliver_app_bar_page.dart';
import 'package:widget_of_the_week/pages/sliver_page.dart';
import 'package:widget_of_the_week/pages/table_page.dart';
import 'package:widget_of_the_week/pages/tooltip_page.dart';
import 'package:widget_of_the_week/pages/wrap_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget of the Week',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        SafeAreaPage.routeName: (context) => const SafeAreaPage(),
        ExpandedPage.routeName: (context) => const ExpandedPage(),
        WrapPage.routeName: (context) => const WrapPage(),
        OpacityPage.routeName: (context) => const OpacityPage(),
        FloatingActionButtonPage.routeName: (context) =>
            const FloatingActionButtonPage(),
        TablePage.routeName: (context) => const TablePage(),
        SliverAppBarPage.routeName: (context) => const SliverAppBarPage(),
        SliverPage.routeName: (context) => const SliverPage(),
        ClipRRectPage.routeName: (context) => const ClipRRectPage(),
        CustomPaintPage.routeName: (context) => const CustomPaintPage(),
        TooltipPage.routeName: (context) => const TooltipPage(),
        FittedBoxPage.routeName: (context) => const FittedBoxPage(),
        AbsorbPointerPage.routeName: (context) => const AbsorbPointerPage(),
        BackDropFilterPage.routeName: (context) => const BackDropFilterPage(),
      },
    );
  }
}
