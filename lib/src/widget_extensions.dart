/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:flutter/material.dart';
import 'package:smiles/src/padding_theme.dart';

///
/// Widget Extensions
///
extension WidgetExtensions on Widget {
  Widget padding([double? padding]) =>
      Builder(builder: (context) {
        final theme = Theme.of(context).extension<PaddingTheme>();
        return Padding(
          padding: EdgeInsets.all(theme?.unit ?? 8),
          child: this,
        );
      });

  Widget padByUnits(double top, double right, double bottom, double left) =>
      Builder(builder: (context) {
        final unit = Theme
            .of(context)
            .extension<PaddingTheme>()
            ?.unit ?? 8;
        return Padding(
          padding: EdgeInsets.only(
              left: left * unit,
              top: top * unit,
              right: right * unit,
              bottom: bottom * unit),
          child: this,
        );
      });

  Widget pad(double top, double right, double bottom, double left) =>
      Padding(
        padding:
        EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this,
      );

  Widget toRight({bool? when}) =>
      when != false
          ? Align(
        alignment: AlignmentDirectional.centerEnd,
        child: this,
      )
          : this;

  Widget toLeft({bool? when}) =>
      when != false
          ? Align(
        alignment: AlignmentDirectional.centerStart,
        child: this,
      )
          : this;

  Widget max({double? width, double? height, bool? when}) =>
      when != false
          ? ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: width ?? double.infinity,
          maxHeight: height ?? double.infinity,
        ),
        child: this,
      )
          : this;

  Widget min({double? width, double? height, bool? when}) =>
      when != false
          ? ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: width ?? double.infinity,
          minHeight: height ?? double.infinity,
        ),
        child: this,
      )
          : this;

  Widget expand({bool? when}) => when != false ? Expanded(child: this) : this;

  Widget constrain({
    double? maxWidth,
    double? maxHeight,
    double? minWidth,
    double? minHeight,
    bool? when,
  }) =>
      when != false
          ? ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth ?? double.infinity,
          maxHeight: maxHeight ?? double.infinity,
          minWidth: minWidth ?? 0.0,
          minHeight: minHeight ?? 0.0,
        ),
        child: this,
      )
          : this;

  Widget size({
    double? width,
    double? height,
    bool? when,
  }) =>
      when != false
          ? SizedBox(
        width: width,
        height: height,
        child: this,
      )
          : this;
}
