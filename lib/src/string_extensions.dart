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
import 'package:smiles/src/headline.dart';
import 'package:smiles/src/text.dart';
import 'package:smiles/src/widget_extensions.dart';

///
/// String Extensions. Helps to convert a string to a Text or Button widget.
///
extension StringExtensions on String {
  Text get txt => Text(this);

  SmallText get small => SmallText(this);

  Text style({double? size, Color? color}) =>
      Text(this, style: TextStyle(color: color, fontSize: size));

  LargeHeadline get h1 => LargeHeadline(this);

  MediumHeadline get h2 => MediumHeadline(this);

  SmallHeadline get h3 => SmallHeadline(this);

  Widget onPressed(VoidCallback? onPressed,
          {String? tooltip, bool disabled = false}) =>
      TextButton(
        onPressed: disabled ? null : onPressed,
        child: Text(this),
      ).tip(tooltip);

  Widget onButtonPressed(VoidCallback? onPressed,
          {String? tooltip, bool disabled = false}) =>
      ElevatedButton(
        onPressed: disabled ? null : onPressed,
        child: Text(this),
      ).tip(tooltip);
}
