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
class GapsTheme extends ThemeExtension<GapsTheme> {
  const GapsTheme({
    this.unit = 4,
    this.largeFactor = 36,
    this.mediumFactor = 12,
    this.smallFactor = 4,
  });

  final double unit;
  final double largeFactor;
  final double mediumFactor;
  final double smallFactor;

  @override
  GapsTheme copyWith(
      {double? unit,
      double? largeFactor,
      double? mediumFactor,
      double? smallFactor}) {
    return GapsTheme(
      unit: unit ?? this.unit,
      largeFactor: largeFactor ?? this.largeFactor,
      mediumFactor: mediumFactor ?? this.mediumFactor,
      smallFactor: smallFactor ?? this.smallFactor,
    );
  }

  @override
  GapsTheme lerp(GapsTheme? other, double t) {
    if (other is! GapsTheme) {
      return this;
    }
    return GapsTheme(
      unit: lerpDouble(unit, other.unit, t) ?? other.unit,
      largeFactor:
          lerpDouble(largeFactor, other.largeFactor, t) ?? other.largeFactor,
      mediumFactor:
          lerpDouble(mediumFactor, other.mediumFactor, t) ?? other.mediumFactor,
      smallFactor:
          lerpDouble(smallFactor, other.smallFactor, t) ?? other.smallFactor,
    );
  }

  @override
  String toString() => 'GapsTheme(unit: $unit, largeFactor: $largeFactor, '
      'mediumFactor: $mediumFactor, smallFactor: $smallFactor)';
}
