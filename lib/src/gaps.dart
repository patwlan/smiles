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
import 'package:flutter/material.dart';
import 'package:smiles/src/gaps_theme.dart';

const double _defaultGap = 4;

///
/// Vertical gap
///
class VGap extends _Gap {
  const VGap({super.key});

  const VGap.units(int factor, {super.key}) : super(factor: factor);

  const VGap.large({super.key}) : super(size: _Size.large);

  const VGap.medium({super.key}) : super(size: _Size.medium);

  const VGap.small({super.key}) : super(size: _Size.small);

  @override
  final direction = _Direction.vertical;
}

///
/// Horizontal gap
///
class HGap extends _Gap {
  const HGap({super.key});

  const HGap.units(int factor, {super.key}) : super(factor: factor);

  const HGap.large({super.key}) : super(size: _Size.large);

  const HGap.medium({super.key}) : super(size: _Size.medium);

  const HGap.small({super.key}) : super(size: _Size.small);

  @override
  final direction = _Direction.horizontal;
}

///
/// Horizontal gap
///
@immutable
abstract class _Gap extends StatelessWidget {
  const _Gap({this.factor, this.size, super.key});

  final int? factor;
  final _Size? size;
  abstract final _Direction direction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<GapsTheme>();
    final calculatedFactor = switch (size) {
      _Size.small => 4,
      _Size.medium => 12,
      _Size.large => 36,
      null => factor ?? 1,
    };
    final gap = calculatedFactor * (theme?.unit ?? _defaultGap);

    if (_Direction.horizontal == direction) return SizedBox(width: gap);
    return SizedBox(height: gap);
  }
}

enum _Direction {
  horizontal,
  vertical,
}

enum _Size {
  small,
  medium,
  large,
}
