// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMi4zMTY5IDE4Ljk3ODVMMTIuMzE2OSA0Ljk3ODUyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTUuNTM5MDYgMTguOTc4NUw1LjUzOTA2IDQuOTc4NTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUuMjIyMiAxOC45Nzg1TDE1LjIyMjIgNC45Nzg1MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxOC45NzhMMjIgNC45NzgwMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yLjYzMzc5IDE4Ljk3ODVMMi42MzM3OSA0Ljk3ODUyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHJlY3QgeD0iOC40NDM4NSIgeT0iNC45NTY1NCIgd2lkdGg9IjAuOTY3ODg1IiBoZWlnaHQ9IjE0LjA0MzUiIHJ4PSIwLjQ4Mzk0MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxyZWN0IHg9IjE4LjEyNyIgeT0iNC45MzQ1NyIgd2lkdGg9IjAuOTY3ODg1IiBoZWlnaHQ9IjE0LjA0MzUiIHJ4PSIwLjQ4Mzk0MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BarcodeLinearIcon extends StatelessWidget {
  /// Creates the `barcode` icon in the linear style.
  const BarcodeLinearIcon({
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
    name: 'barcode',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12.3169 18.9785L12.3169 4.97852" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.53906 18.9785L5.53906 4.97852" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.2222 18.9785L15.2222 4.97852" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 18.978L22 4.97803" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.63379 18.9785L2.63379 4.97852" stroke="currentColor" stroke-linecap="round"/>
<rect x="8.44385" y="4.95654" width="0.967885" height="14.0435" rx="0.483942" stroke="currentColor" stroke-linecap="round"/>
<rect x="18.127" y="4.93457" width="0.967885" height="14.0435" rx="0.483942" stroke="currentColor" stroke-linecap="round"/>''',
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
