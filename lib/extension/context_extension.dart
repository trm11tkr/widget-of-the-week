import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  /// ダークモード
  bool get isDark => MediaQuery.of(this).platformBrightness == Brightness.dark;

  /// 端末サイズ
  double get deviceWidth => MediaQuery.of(this).size.width;
  double get deviceHeight => MediaQuery.of(this).size.height;
  bool get isIphoneMiniSize =>
      deviceWidth == 320 && deviceHeight == 568; // iPhone SE 1st
  double get appBarHeight => MediaQuery.of(this).padding.top + kToolbarHeight;

  /// プラットフォーム
  bool get isAndroid => Theme.of(this).platform == TargetPlatform.android;
  bool get isIOS => Theme.of(this).platform == TargetPlatform.iOS;

  /// 端末の向き
  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;
}
