/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
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
