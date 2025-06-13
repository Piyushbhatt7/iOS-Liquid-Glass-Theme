import 'dart:ui';
import 'package:flutter/material.dart';

class LiquidGlassContainer extends StatelessWidget {
  final double blur;
  final double opacity;
  final BorderRadiusGeometry borderRadius;
  final Widget child;
  final Color color;
  final double borderWidth;
  final Color borderColor;
  final double? width;
  final double? height;
  final BoxShadow? boxShadow;

  const LiquidGlassContainer({
    super.key,
    required this.child,
    this.blur = 20.0,
    this.opacity = 0.2,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    this.color = Colors.white,
    this.borderWidth = 0.8,
    this.borderColor = const Color(0x25FFFFFF),
    this.width,
    this.height,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        boxShadow: boxShadow != null ? [boxShadow!] : [],
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            decoration: BoxDecoration(
              color: color.withOpacity(opacity),
              borderRadius: borderRadius,
              border: Border.all(
                color: borderColor,
                width: borderWidth,
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
