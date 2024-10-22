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
import 'package:smiles/src/padding_theme.dart';

///
/// Widget Extensions
///
extension WidgetExtensions on Widget {
  Widget padding([double? padding]) => Builder(builder: (context) {
        final theme = Theme.of(context).extension<PaddingTheme>();
        return Padding(
          padding: EdgeInsets.all(padding ?? theme?.unit ?? 8),
          child: this,
        );
      });

  Widget padByUnits(double top, double right, double bottom, double left) =>
      Builder(builder: (context) {
        final unit = Theme.of(context).extension<PaddingTheme>()?.unit ?? 8;
        return Padding(
          padding: EdgeInsets.only(
              left: left * unit,
              top: top * unit,
              right: right * unit,
              bottom: bottom * unit),
          child: this,
        );
      });

  Widget pad(double top, double right, double bottom, double left) => Padding(
        padding:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this,
      );

  Widget center({bool? when}) => when != false ? Center(child: this) : this;

  Widget toRight({bool? when}) => when != false
      ? Align(
          alignment: AlignmentDirectional.centerEnd,
          child: this,
        )
      : this;

  Widget toLeft({bool? when}) => when != false
      ? Align(
          alignment: AlignmentDirectional.centerStart,
          child: this,
        )
      : this;

  Widget max({double? width, double? height, bool? when}) => when != false
      ? ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: width ?? double.infinity,
            maxHeight: height ?? double.infinity,
          ),
          child: this,
        )
      : this;

  Widget min({double? width, double? height, bool? when}) => when != false
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

  Widget percent({
    double? width,
    double? height,
    bool? when,
  }) =>
      when != false
          ? FractionallySizedBox(
              widthFactor: width,
              heightFactor: height,
              child: this,
            )
          : this;

  Widget percentOfScreen({
    double? width,
    double? height,
    bool? when,
  }) =>
      when != false
          ? Builder(
              builder: (context) {
                final size = MediaQuery.sizeOf(context);
                return SizedBox(
                  width: width != null ? size.width * width : null,
                  height: height != null ? size.height * height : null,
                  child: this,
                );
              },
            )
          : this;

  Widget tip(String? message, {bool? when}) => when != false && message != null
      ? Tooltip(
          waitDuration: const Duration(milliseconds: 600),
          message: message,
          child: this,
        )
      : this;
}
