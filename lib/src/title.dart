/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:flutter/material.dart';

///
/// Title widgets
///
class Title extends StatelessWidget {
  const Title(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.titleMedium);
  }
}

class LargeTitle extends StatelessWidget {
  const LargeTitle(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.titleLarge);
  }
}

class SubTitle extends StatelessWidget {
  const SubTitle(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.titleSmall);
  }
}
