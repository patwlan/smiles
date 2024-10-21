/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:flutter/material.dart';
import 'package:smiles/src/title.dart';

///
/// String Extensions
///
extension StringExtensions on String {
  Text get txt => Text(this);

  Text style({double? size, Color? color}) =>
      Text(this, style: TextStyle(color: color, fontSize: size));

  Text underline() => Text(this,
      style: const TextStyle(
        decoration: TextDecoration.underline,
      ));

  SubTitle get h2 => SubTitle(this);

  LargeTitle get h1 => LargeTitle(this);

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
