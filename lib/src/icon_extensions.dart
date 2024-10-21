/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:flutter/material.dart';

///
/// Icon Extensions
///
extension IconExtensions on IconData {
  /// Converts an icon to an IconButton.
  Widget onPressed({VoidCallback? onPressed, double? size, Color? color}) =>
      IconButton(
          onPressed: onPressed, icon: Icon(this, size: size, color: color));
}
