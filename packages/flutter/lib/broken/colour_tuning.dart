// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDEySDkuNU0yMiAxMkgxNC41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIwLjAwMDIgMTUuNjg0M0MyMC4wMDAyIDE5IDE3LjczNDUgMjIgMTYuMDAwMiAyMkMxNC43NDI3IDIyIDEzLjY3MjUgMjEuMDI5OSAxMi45NjgyIDE4Ljk5OTlNNC4xNDQwNCA4LjMxNTY3QzQuMTQ0MDQgNC45OTk4OCA2LjQwOTc4IDEuOTk5ODggOC4xNDQwNCAxLjk5OTg4QzEwLjQxMjggMS45OTk4OCAxMi4wNzIzIDUuMTU3OTQgMTIuMDcyMyAxMkMxMi4wNzIzIDEzLjA5MzMgMTIuMTE0NiAxNC4wOTI2IDEyLjE5NTEgMTQuOTk5OSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ColourTuningBrokenIcon extends StatelessWidget {
  /// Creates the `colour-tuning` icon in the broken style.
  const ColourTuningBrokenIcon({
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
    name: 'colour-tuning',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 12H9.5M22 12H14.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.0002 15.6843C20.0002 19 17.7345 22 16.0002 22C14.7427 22 13.6725 21.0299 12.9682 18.9999M4.14404 8.31567C4.14404 4.99988 6.40978 1.99988 8.14404 1.99988C10.4128 1.99988 12.0723 5.15794 12.0723 12C12.0723 13.0933 12.1146 14.0926 12.1951 14.9999" stroke="currentColor" stroke-linecap="round"/>''',
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
