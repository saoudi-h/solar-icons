// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ssd-round` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIxLjU1MzQgMTUuNDgxM0wxOSA1LjExNzY1QzE4LjUgMy41Mjk0MSAxNy42MDQ2IDMgMTYuNSAzSDcuNUM2LjM5NTQzIDMgNS41IDMuNTI5NDEgNSA1LjExNzY1TDIuNDQ2NjQgMTUuNDgxM00yLjQ0NjY0IDE1LjQ4MTNDMi4xNjIyMSAxNi4wMTcyIDIgMTYuNjM1NiAyIDE3LjI5NDFDMiAxOS4zNDA4IDMuNTY3IDIxIDUuNSAyMUgxOC41QzIwLjQzMyAyMSAyMiAxOS4zNDA4IDIyIDE3LjI5NDFDMjIgMTYuNjM1NiAyMS44Mzc4IDE2LjAxNzIgMjEuNTUzNCAxNS40ODEzQzIwLjk1MzggMTQuMzUxNSAxOS44MTExIDEzLjU4ODIgMTguNSAxMy41ODgySDUuNUM0LjE4ODkzIDEzLjU4ODIgMy4wNDYyMyAxNC4zNTE1IDIuNDQ2NjQgMTUuNDgxM1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTggMTdWMTgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUuNSAxN1YxOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMyAxN1YxOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMC41IDE3VjE4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SsdRoundLinearIcon extends StatelessWidget {
  /// Creates the `ssd-round` icon in the linear style.
  const SsdRoundLinearIcon({
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
    name: 'ssd-round',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M21.5534 15.4813L19 5.11765C18.5 3.52941 17.6046 3 16.5 3H7.5C6.39543 3 5.5 3.52941 5 5.11765L2.44664 15.4813M2.44664 15.4813C2.16221 16.0172 2 16.6356 2 17.2941C2 19.3408 3.567 21 5.5 21H18.5C20.433 21 22 19.3408 22 17.2941C22 16.6356 21.8378 16.0172 21.5534 15.4813C20.9538 14.3515 19.8111 13.5882 18.5 13.5882H5.5C4.18893 13.5882 3.04623 14.3515 2.44664 15.4813Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 17V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 17V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 17V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 17V18" stroke="currentColor" stroke-linecap="round"/>''',
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
