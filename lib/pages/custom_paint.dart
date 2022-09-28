import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget_of_the_week/extension/context_extension.dart';
import 'package:widget_of_the_week/widgets/app_scaffold.dart';

// キャンパスサイズ
const Size _size = Size(102, 102);
Offset _center = Offset(_size.width / 2, _size.height / 2);
final Paint _redPaint = Paint()..color = Colors.red;
final _customStroke = Paint()
  ..color = Colors.blue
  ..style = PaintingStyle.stroke
  ..strokeWidth = 4;

class CustomPaintPage extends StatelessWidget {
  const CustomPaintPage({super.key});

  static const routeName = 'CustomPaint';

  @override
  Widget build(BuildContext context) {
    final paintItems = [
      _CustomContainer(
        child: CustomPaint(
          painter: _CirclePaint(),
        ),
      ),
      _CustomContainer(
        child: CustomPaint(
          painter: _HollowedOutCirclePaint(),
        ),
      ),
      _CustomContainer(
        child: CustomPaint(
          painter: _LinePaint(),
        ),
      ),
      _CustomContainer(
        child: CustomPaint(
          painter: _LineAndCirclePaint(),
        ),
      ),
      _CustomContainer(
        child: CustomPaint(
          painter: _RectPaint(),
        ),
      ),
      _CustomContainer(
        child: CustomPaint(
          painter: _ArchPaint(),
        ),
      ),
    ];

    return AppScaffold(
      title: 'CustomPaint',
      child: Center(
        child: SingleChildScrollView(
          child: context.isLandscape
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: paintItems,
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: paintItems,
                ),
        ),
      ),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      height: 104,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
      child: child,
    );
  }
}

// 赤丸
class _CirclePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(_center, min(size.height / 2, size.width / 2), _redPaint);
  }

  // 再描画する必要なし
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// くり抜かれた円
class _HollowedOutCirclePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      _center,
      min(size.height / 2, size.width / 2),
      _customStroke,
    );
  }

  // 再描画する必要なし
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// クロスの十字ライン
class _LinePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas
      ..drawLine(Offset.zero, _center, _customStroke)
      ..drawLine(Offset(size.width, 0), _center, _customStroke)
      ..drawLine(Offset(size.width, size.height), _center, _customStroke)
      ..drawLine(Offset(0, size.height), _center, _customStroke);
  }

  // 再描画する必要なし
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// 赤丸の上に青い十字ライン
class _LineAndCirclePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas
      ..drawCircle(_center, min(size.height / 2, size.width / 2), _redPaint)
      ..drawLine(Offset(size.width / 2, 0), _center, _customStroke)
      ..drawLine(Offset(size.width, size.height / 2), _center, _customStroke)
      ..drawLine(Offset(size.width / 2, size.height), _center, _customStroke)
      ..drawLine(Offset(0, size.height / 2), _center, _customStroke);
  }

  // 再描画する必要なし
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// 長方形を生成
class _RectPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
      Rect.fromLTWH(0, size.height / 2, size.width, size.height / 2),
      _redPaint,
    );
  }

  // 再描画する必要なし
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// アーチを生成
class _ArchPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(0, 0, size.width, size.height);
    canvas.drawArc(rect, -pi, pi, false, _customStroke);
  }

  // 再描画する必要なし
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
