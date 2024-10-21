/*
 *
 * Copyright 2024: Patrick Whelan
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *           http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 *
 */

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
