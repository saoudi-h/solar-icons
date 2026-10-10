// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjEuOTUwNiAxMy4wMDA0QzIxLjQ0ODkgMTguMDUzOCAxNy4xODUzIDIyLjAwMDQgMTIgMjIuMDAwNEM2LjQ3NzE1IDIyLjAwMDQgMiAxNy41MjMzIDIgMTIuMDAwNEMyIDEwLjE3OSAyLjQ4Njk3IDguNDcxMyAzLjMzNzgyIDcuMDAwNDNNMTEgMi4wNDk4QzkuNTUzODUgMi4xOTMzOSA4LjE5ODMzIDIuNjQ1MDYgNyAzLjMzODI1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDExLjk5OTJWMi40NTcwM0MxOC4xMTAxIDMuNDMzODUgMjAuNTY1NCA1Ljg4OTE2IDIxLjU0MjIgOC45OTkyMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class VinylBrokenIcon extends StatelessWidget {
  /// Creates the `vinyl` icon in the broken style.
  const VinylBrokenIcon({
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
    name: 'vinyl',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="12" r="3" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.9506 13.0004C21.4489 18.0538 17.1853 22.0004 12 22.0004C6.47715 22.0004 2 17.5233 2 12.0004C2 10.179 2.48697 8.4713 3.33782 7.00043M11 2.0498C9.55385 2.19339 8.19833 2.64506 7 3.33825" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 11.9992V2.45703C18.1101 3.43385 20.5654 5.88916 21.5422 8.99923" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
