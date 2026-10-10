// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAuMTQxOCAxMC4zNjI4QzEzLjY4NzYgNi44MTcwNyAyMS45MTM3IDE1LjYxMDUgMTYuNTI0MiAyMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtZGFzaGFycmF5PSIyIDIiLz4KPHBhdGggZD0iTTEzLjg1ODIgMTMuNjM3MkMxMC4zMTI0IDE3LjE4MjkgMi4wODYzNCA4LjM4OTUyIDcuNDc1ODQgMy4wMDAwMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtZGFzaGFycmF5PSIyIDIiLz4KPHBhdGggZD0iTTEwLjM2MjggMTMuODU3OUM2LjgxNzA3IDEwLjMxMjIgMTUuNjEwNSAyLjA4NjA5IDIxIDcuNDc1NiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtZGFzaGFycmF5PSIyIDIiLz4KPHBhdGggZD0iTTEzLjYzNzIgMTAuMTQyMUMxNy4xODI5IDEzLjY4NzggOC4zODk1MiAyMS45MTM5IDMuMDAwMDIgMTYuNTI0NCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtZGFzaGFycmF5PSIyIDIiLz4KPC9zdmc+Cg==)
class BlackHole2BrokenIcon extends StatelessWidget {
  /// Creates the `black-hole-2` icon in the broken style.
  const BlackHole2BrokenIcon({
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
    name: 'black-hole-2',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.1418 10.3628C13.6876 6.81707 21.9137 15.6105 16.5242 21" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M13.8582 13.6372C10.3124 17.1829 2.08634 8.38952 7.47584 3.00001" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M10.3628 13.8579C6.81707 10.3122 15.6105 2.08609 21 7.4756" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M13.6372 10.1421C17.1829 13.6878 8.38952 21.9139 3.00002 16.5244" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>''',
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
