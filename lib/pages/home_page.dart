import 'package:flutter/material.dart';
import 'package:widget_of_the_week/pages/absorb_pointer_page.dart';
import 'package:widget_of_the_week/pages/align_page.dart';
import 'package:widget_of_the_week/pages/back_drop_filter_page.dart';
import 'package:widget_of_the_week/pages/clip_r_rect_page.dart';
import 'package:widget_of_the_week/pages/custom_paint.dart';
import 'package:widget_of_the_week/pages/dismissible_page.dart';
import 'package:widget_of_the_week/pages/draggable_page.dart';
import 'package:widget_of_the_week/pages/expanded_page.dart';
import 'package:widget_of_the_week/pages/fitted_box_page.dart';
import 'package:widget_of_the_week/pages/floating_action_button_page.dart';
import 'package:widget_of_the_week/pages/opacity_page.dart';
import 'package:widget_of_the_week/pages/positioned_page.dart';
import 'package:widget_of_the_week/pages/safe_area.dart';
import 'package:widget_of_the_week/pages/sliver_app_bar_page.dart';
import 'package:widget_of_the_week/pages/sliver_page.dart';
import 'package:widget_of_the_week/pages/spacer_page.dart';
import 'package:widget_of_the_week/pages/table_page.dart';
import 'package:widget_of_the_week/pages/tooltip_page.dart';
import 'package:widget_of_the_week/pages/value_listenable_builder_page.dart';
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
          AppListTile(title: 'Table', nextRouteName: TablePage.routeName),
          AppListTile(
            title: 'SliverAppBar',
            nextRouteName: SliverAppBarPage.routeName,
          ),
          AppListTile(
            title: 'SliverList&Grid',
            nextRouteName: SliverPage.routeName,
          ),
          AppListTile(
            title: 'ClipRRect',
            nextRouteName: ClipRRectPage.routeName,
          ),
          AppListTile(
            title: 'CustomPaint',
            nextRouteName: CustomPaintPage.routeName,
          ),
          AppListTile(
            title: 'ToolTip',
            nextRouteName: TooltipPage.routeName,
          ),
          AppListTile(
            title: 'FittedBox',
            nextRouteName: FittedBoxPage.routeName,
          ),
          AppListTile(
            title: 'AbsorbPointer',
            nextRouteName: AbsorbPointerPage.routeName,
          ),
          AppListTile(
            title: 'BackDropFilter',
            nextRouteName: BackDropFilterPage.routeName,
          ),
          AppListTile(
            title: 'Align',
            nextRouteName: AlignPage.routeName,
          ),
          AppListTile(
            title: 'Positioned',
            nextRouteName: PositionedPage.routeName,
          ),
          AppListTile(
            title: 'Dismissible',
            nextRouteName: DismissiblePage.routeName,
          ),
          AppListTile(
            title: 'ValueListenableBuilder',
            nextRouteName: ValueListenableBuilderPage.routeName,
          ),
          AppListTile(
            title: 'Draggable',
            nextRouteName: DraggablePage.routeName,
          ),
          AppListTile(title: 'Spacer', nextRouteName: SpacerPage.routeName,),
        ],
      ),
    );
  }
}
