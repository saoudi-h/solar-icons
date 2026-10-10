// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMSAxM0wzIDIxTTMgMTVWMjFIOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMS45OTk5IDEyQzIxLjk5OTkgMTYuNzE0IDIxLjk5OTkgMTkuMDcxMSAyMC41MzU0IDIwLjUzNTVDMTkuMTc4NCAyMS44OTI2IDE3LjA1NSAyMS45OTIxIDEyLjk5OTkgMjEuOTk5NE0yLjAwMDQ5IDExQzIuMDA3NzkgNi45NDQ5MyAyLjEwNzM0IDQuODIxNSAzLjQ2NDM4IDMuNDY0NDdDNC45Mjg4NCAyIDcuMjg1ODcgMiAxMS45OTk5IDJDMTYuNzE0IDIgMTkuMDcxIDIgMjAuNTM1NCAzLjQ2NDQ3QzIxLjUwOTIgNC40MzgyMSAyMS44MzU1IDUuODA2NTUgMjEuOTQ0OCA4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SquareBottomDownBrokenIcon extends StatelessWidget {
  /// Creates the `square-bottom-down` icon in the broken style.
  const SquareBottomDownBrokenIcon({
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
    name: 'square-bottom-down',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M11 13L3 21M3 15V21H9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M21.9999 12C21.9999 16.714 21.9999 19.0711 20.5354 20.5355C19.1784 21.8926 17.055 21.9921 12.9999 21.9994M2.00049 11C2.00779 6.94493 2.10734 4.8215 3.46438 3.46447C4.92884 2 7.28587 2 11.9999 2C16.714 2 19.071 2 20.5354 3.46447C21.5092 4.43821 21.8355 5.80655 21.9448 8" stroke="currentColor" stroke-linecap="round"/>''',
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
