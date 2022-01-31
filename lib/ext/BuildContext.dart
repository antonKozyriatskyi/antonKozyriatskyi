import 'package:flutter/material.dart';

extension ThemeExt on BuildContext {

  ThemeData theme() => Theme.of(this);

  ColorScheme colorScheme() => theme().colorScheme;

  TextTheme textTheme() => theme().textTheme;

  TextTheme primaryTextTheme() => theme().primaryTextTheme;

}