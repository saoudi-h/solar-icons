// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-bottom-up` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIxLjk5OTkgMTJDMjEuOTk5OSAxNi43MTQgMjEuOTk5OSAxOS4wNzExIDIwLjUzNTQgMjAuNTM1NUMxOS4xNzg0IDIxLjg5MjYgMTcuMDU1IDIxLjk5MjEgMTIuOTk5OSAyMS45OTk0TTIuMDAwNDkgMTFDMi4wMDc3OSA2Ljk0NDkzIDIuMTA3MzQgNC44MjE1IDMuNDY0MzggMy40NjQ0N0M0LjkyODg0IDIgNy4yODU4NyAyIDExLjk5OTkgMkMxNi43MTQgMiAxOS4wNzEgMiAyMC41MzU0IDMuNDY0NDdDMjEuNTA5MiA0LjQzODIxIDIxLjgzNTUgNS44MDY1NSAyMS45NDQ4IDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMyAyMUwxMSAxM00xMSAxOVYxM0g1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class SquareBottomUpBrokenIcon extends StatelessWidget {
  /// Creates the `square-bottom-up` icon in the broken style.
  const SquareBottomUpBrokenIcon({
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
    name: 'square-bottom-up',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21.9999 12C21.9999 16.714 21.9999 19.0711 20.5354 20.5355C19.1784 21.8926 17.055 21.9921 12.9999 21.9994M2.00049 11C2.00779 6.94493 2.10734 4.8215 3.46438 3.46447C4.92884 2 7.28587 2 11.9999 2C16.714 2 19.071 2 20.5354 3.46447C21.5092 4.43821 21.8355 5.80655 21.9448 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 21L11 13M11 19V13H5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
