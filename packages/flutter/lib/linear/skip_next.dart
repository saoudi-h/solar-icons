// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNi42NTk4IDkuMzUyNThDMTguNDQ2NyAxMC41MDY1IDE4LjQ0NjcgMTMuNDkzNSAxNi42NTk4IDE0LjY0NzRMNS44NzA4MyAyMS42MTQ1QzQuMTM0MTkgMjIuNzM2IDIgMjEuMjc2MyAyIDE4Ljk2NzFMMiA1LjAzMjlDMiAyLjcyMzY4IDQuMTM0MTkgMS4yNjQwMiA1Ljg3MDgzIDIuMzg1NDhMMTYuNjU5OCA5LjM1MjU4WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiA1VjE5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SkipNextLinearIcon extends StatelessWidget {
  /// Creates the `skip-next` icon in the linear style.
  const SkipNextLinearIcon({
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
    name: 'skip-next',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M16.6598 9.35258C18.4467 10.5065 18.4467 13.4935 16.6598 14.6474L5.87083 21.6145C4.13419 22.736 2 21.2763 2 18.9671L2 5.0329C2 2.72368 4.13419 1.26402 5.87083 2.38548L16.6598 9.35258Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 5V19" stroke="currentColor" stroke-linecap="round"/>''',
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
