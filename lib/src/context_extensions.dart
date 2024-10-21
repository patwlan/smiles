/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:flutter/material.dart';

///
/// Context Extensions
///
extension ContextExtensions on BuildContext {
  bool isMobile() {
    final platform = Theme.of(this).platform;
    return platform == TargetPlatform.iOS || platform == TargetPlatform.android;
  }

  Screen get screen {
    final size = MediaQuery.of(this).size;

    if (size.width < 400) {
      return Screen.small;
    }
    if (size.width < 800) {
      return Screen.medium;
    }
    return Screen.large;
  }

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  T themeExtension<T>() => Theme.of(this).extension<T>()!;
}

enum Screen { small, medium, large }
