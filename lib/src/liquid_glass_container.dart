import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:liquid_glass/liquid_glass.dart';


class LiquidGlassContainer extends StatelessWidget {
  final Widget child;
  final BorderRadius borderRadius;
  final EdgeInsets padding;
  final double? blurX;
  final double? blurY;
  final double? opacity;
  final Color? backgroundColor;

  const LiquidGlassContainer({
    super.key,
    required this.child,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
    this.padding = const EdgeInsets.all(16),
    this.blurX,
    this.blurY,
    this.opacity,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = GlassTheme.of(context);

    return ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: blurX ?? theme.blurX,
          sigmaY: blurY ?? theme.blurY,
        ),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: (backgroundColor ?? theme.color).withOpacity(opacity ?? theme.opacity),
            borderRadius: borderRadius,
            border: Border.all(color: Colors.white.withOpacity(0.2)),
          ),
          child: child,
        ),
      ),
    );
  }
}
