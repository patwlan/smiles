/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:flutter/material.dart';

///
/// Widget Extensions
///
extension WidgetExtensions on Widget {
  Widget padding([double padding = 8.0]) => Padding(
        padding: EdgeInsets.all(padding),
        child: this,
      );

  Widget pad(double top, double right, double bottom, double left) => Padding(
        padding:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this,
      );


  Widget toRight() => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: this,
      );

  Widget toLeft() => Align(
        alignment: AlignmentDirectional.centerStart,
        child: this,
      );

  Widget max({double? width, double? height}) => ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: width ?? double.infinity,
          maxHeight: height ?? double.infinity,
        ),
        child: this,
      );

  Widget min({double? width, double? height}) => ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: width ?? double.infinity,
          minHeight: height ?? double.infinity,
        ),
        child: this,
      );

  Widget expand() => Expanded(child: this);
}

