import 'package:flutter/material.dart';
import 'package:widget_of_the_week/utils/logger.dart';
import 'package:widget_of_the_week/widgets/app_image_object.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

class DraggablePage extends StatefulWidget {
  const DraggablePage({super.key});

  static const routeName = 'Draggable';

  @override
  State<DraggablePage> createState() => _DraggablePageState();
}

class _DraggablePageState extends State<DraggablePage> {
  int _acceptedDataA = 0;
  int _acceptedDataB = 0;

  bool _willAccepted = false;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Draggable',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // ドラッグ元オブジェクト
            const Draggable(
              data: 1,
              // ドラッグ中のオブジェクト
              feedback: _CustomContainer(
                child: Opacity(opacity: 0.5, child: AppImageObject()),
              ),
              // ドラッグ中の元の位置のオブジェクト
              childWhenDragging: _CustomContainer(
                child: Text('ドラッグ中'),
              ),
              // ドラッグ前のオブジェクト
              child: _CustomContainer(child: AppImageObject()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DragTarget<int>(
                  builder: (
                    BuildContext context,
                    List<dynamic> accepted,
                    List<dynamic> rejected,
                  ) {
                    return _CustomContainer(
                      color: _willAccepted ? Colors.deepOrange.shade400 : null,
                      child: Text('get $_acceptedDataA hippo!'),
                    );
                  },
                  // ターゲット内に入った時に一度だけ
                  onWillAccept: (data) {
                    setState(() {
                      _willAccepted = true;
                    });

                    return true;
                  },
                  // ターゲット内でドロップが成功
                  onAccept: (int data) {
                    setState(() {
                      _acceptedDataA += data;
                    });
                  },
                  // ターゲット内から離れたとき
                  onLeave: (data) {
                    setState(() {
                      _acceptedDataA = 0;
                      _willAccepted = false;
                    });
                  },
                  // onAccept にドロップ場所情報が追加
                  onAcceptWithDetails: (details) {
                    logger.info(
                      'data: ${details.data}, offset: ${details.offset}',
                    );
                  },
                  // ターゲット内で位置が変わる度
                  onMove: (details) {
                    setState(() {
                      _acceptedDataA += details.data;
                    });
                  },
                ),
                // 一応シンプルな方も
                DragTarget<int>(
                  builder: (
                    BuildContext context,
                    List<dynamic> accepted,
                    List<dynamic> rejected,
                  ) {
                    return _CustomContainer(
                      child: Text('get $_acceptedDataB hippo!'),
                    );
                  },
                  onAccept: (int data) {
                    setState(() {
                      _acceptedDataB += data;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({required this.child, this.color});

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(color: color, border: Border.all()),
      child: Center(child: child),
    );
  }
}
