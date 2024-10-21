/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:flutter/material.dart';
import 'package:smiles/src/headline.dart';
import 'package:smiles/src/text.dart';

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

  Widget onPressed(VoidCallback? onPressed) => TextButton(
        onPressed: onPressed,
        child: Text(this),
      );

  Widget onButtonPressed(VoidCallback? onPressed, {bool disabled = false}) =>
      ElevatedButton(
        onPressed: disabled ? null : onPressed,
        child: Text(this),
      );
}
