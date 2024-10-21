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

///
/// Layout Extensions
///
extension LayoutExtensions on List<Widget> {
  Widget row([double? padding]) => Row(children: this);

  Widget column([double? padding]) => Column(children: this);

  Widget grid(int columns, {double? padding}) => GridView.count(
        crossAxisCount: columns,
        padding: padding != null ? EdgeInsets.all(padding) : EdgeInsets.zero,
        children: this,
      );

  Widget wrap({Axis direction = Axis.horizontal, double spacing = 0.0}) => Wrap(
        direction: direction,
        spacing: spacing,
        children: this,
      );
}
