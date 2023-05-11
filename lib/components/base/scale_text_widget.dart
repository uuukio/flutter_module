import 'dart:math';
import 'package:flutter/material.dart';

class NoneScaleTextWidget extends StatelessWidget {
  final Widget child;

  const NoneScaleTextWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaxScaleTextWidget(
      scale: 1,
      child: child,
    );
  }
}

class MaxScaleTextWidget extends StatelessWidget {
  final double scale;
  final Widget child;

  const MaxScaleTextWidget({
    Key? key,
    required this.scale,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);
    var scale = max(this.scale, min(this.scale, data.textScaleFactor));
    return MediaQuery(
      data: data.copyWith(textScaleFactor: scale),
      child: child,
    );
  }
}
