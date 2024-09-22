import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  const GlassMorphism({
    super.key,
    required this.child,
    required this.blur,
    required this.opacity,
    required this.color,
    this.borderRadius,
    this.border,
    this.bcolor,
  });
  final Widget child;
  final double blur;
  final double opacity;
  final Color color;
  final Color? bcolor;
  final bool? border;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          decoration: BoxDecoration(
            color: color.withOpacity(opacity),
            borderRadius: borderRadius,
            border: border == true ? Border.all(color: bcolor ?? color) : null,
          ),
          child: child,
        ),
      ),
    );
  }
}
