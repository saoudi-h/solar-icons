// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjE0LjUiIGN5PSI0LjUiIHI9IjIuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOSAyMS45OTU5VjE4LjA0ODlDMTkgMTYuMjczIDE3LjM5NSAxNC45MTk5IDE1LjYyNjUgMTUuMjA0N003Ljk0ODA2IDEzLjQzNDhMNy45MjMyOCAxMy40MTA5QzYuODgxNDMgMTIuNDA0IDcuNjg2NCAxMC43ODUyIDguNTkzMiAxMC4xNDI3QzkuNSA5LjUwMDE2IDEzLjM0NTEgOC41MDAxNiAxMy4zNDUxIDEzLjQzNDVDMTMuMzQ1MSAxNS4xMjczIDEyLjg3MDQgMTYuNzEzMSAxMi4wNDMzIDE4LjA0ODlNNSAyMi4wMDAzQzYuNDYwNTMgMjIuMDAwMyA3LjgyMDAzIDIxLjYyNTYgOSAyMC45Njc5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class StretchingRoundBrokenIcon extends StatelessWidget {
  /// Creates the `stretching-round` icon in the broken style.
  const StretchingRoundBrokenIcon({
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
    name: 'stretching-round',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="14.5" cy="4.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 21.9959V18.0489C19 16.273 17.395 14.9199 15.6265 15.2047M7.94806 13.4348L7.92328 13.4109C6.88143 12.404 7.6864 10.7852 8.5932 10.1427C9.5 9.50016 13.3451 8.50016 13.3451 13.4345C13.3451 15.1273 12.8704 16.7131 12.0433 18.0489M5 22.0003C6.46053 22.0003 7.82003 21.6256 9 20.9679" stroke="currentColor" stroke-linecap="round"/>''',
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
