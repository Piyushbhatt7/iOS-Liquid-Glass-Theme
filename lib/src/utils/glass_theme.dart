import 'package:flutter/material.dart';

class GlassTheme extends InheritedWidget {
  final double blurX;
  final double blurY;
  final double opacity;
  final Color color;

  const GlassTheme({
    super.key,
    required Widget child,
    this.blurX = 20,
    this.blurY = 20,
    this.opacity = 0.2,
    this.color = Colors.white,
  }) : super(child: child);

  static GlassTheme of(BuildContext context) {
    final GlassTheme? result = context.dependOnInheritedWidgetOfExactType<GlassTheme>();
    assert(result != null, 'No GlassTheme found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(GlassTheme oldWidget) {
    return blurX != oldWidget.blurX ||
        blurY != oldWidget.blurY ||
        opacity != oldWidget.opacity ||
        color != oldWidget.color;
  }
}
