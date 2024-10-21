import 'dart:ui';

import 'package:flutter/material.dart';

/// [ThemeExtension] for the Gaps.
@immutable
class PaddingTheme extends ThemeExtension<PaddingTheme> {
  const PaddingTheme({
    this.unit = 8,
  });

  final double unit;

  @override
  PaddingTheme copyWith(
      {double? unit,
      double? largeFactor,
      double? mediumFactor,
      double? smallFactor}) {
    return PaddingTheme(
      unit: unit ?? this.unit,
    );
  }

  @override
  PaddingTheme lerp(PaddingTheme? other, double t) {
    if (other is! PaddingTheme) {
      return this;
    }
    return PaddingTheme(
      unit: lerpDouble(unit, other.unit, t) ?? other.unit,
    );
  }

  @override
  String toString() => 'PaddingTheme(unit: $unit)';
}
