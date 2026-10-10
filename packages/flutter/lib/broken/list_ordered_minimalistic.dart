// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMCAxNkgxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMCAxMUwxMiAxMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMCA2TDEyIDYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNS4xMzQ3NyA2LjUxMzZMNy4wNjIwNyA1VjkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNNS4xMzQ3NyAxNC4wNTQ5QzUuMTM0NzcgMTMuNDcyMyA1LjU2NjE2IDEzIDYuMDk4MyAxM0M2LjYzMDQ1IDEzIDcuMDYxODQgMTMuNDcyMyA3LjA2MTg0IDE0LjA1NDlDNy4wNjE4NCAxNC42Mzc1IDYuODUxNSAxNC45MTc3IDYuNDc5NjMgMTUuNDMyNkw1LjEzNDc3IDE3SDcuMDYxODQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class ListOrderedMinimalisticBrokenIcon extends StatelessWidget {
  /// Creates the `list-ordered-minimalistic` icon in the broken style.
  const ListOrderedMinimalisticBrokenIcon({
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Width and height.
  final double? size;

  /// Primary color.
  final Color? color;

  /// Stroke width for stroked styles.
  final double? strokeWidth;

  /// Accent color for duotone styles.
  final Color? secondaryColor;

  /// Accent opacity for duotone styles, from 0 to 1.
  final double? secondaryOpacity;

  /// Accessibility label.
  final String? semanticLabel;

  /// When true, ignores [SolarProvider] and [IconTheme].
  final bool isolated;

  /// Static payload for composition with [SolarIcon].
  static const data = SolarIconData(
    name: 'list-ordered-minimalistic',
    style: SolarIconStyle.broken,
    body: r'''<path d="M20 16H12" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 11L12 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 6L12 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.13477 6.5136L7.06207 5V9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.13477 14.0549C5.13477 13.4723 5.56616 13 6.0983 13C6.63045 13 7.06184 13.4723 7.06184 14.0549C7.06184 14.6375 6.8515 14.9177 6.47963 15.4326L5.13477 17H7.06184" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  SolarIconData get _data => data;

  @override
  Widget build(BuildContext context) {
    return SolarIcon(
      _data,
      size: size,
      color: color,
      strokeWidth: strokeWidth,
      secondaryColor: secondaryColor,
      secondaryOpacity: secondaryOpacity,
      semanticLabel: semanticLabel,
      isolated: isolated,
    );
  }
}
