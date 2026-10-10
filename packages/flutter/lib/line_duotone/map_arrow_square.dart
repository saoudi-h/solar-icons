// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDIyQzcuMjg1OTUgMjIgNC45Mjg5MyAyMiAzLjQ2NDQ3IDIwLjUzNTVDMiAxOS4wNzExIDIgMTYuNzE0IDIgMTJDMiA3LjI4NTk1IDIgNC45Mjg5MyAzLjQ2NDQ3IDMuNDY0NDdDNC45Mjg5MyAyIDcuMjg1OTUgMiAxMiAyQzE2LjcxNCAyIDE5LjA3MTEgMiAyMC41MzU1IDMuNDY0NDdDMjIgNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyQzIyIDE2LjcxNCAyMiAxOS4wNzExIDIwLjUzNTUgMjAuNTM1NUMxOS4wNzExIDIyIDE2LjcxNCAyMiAxMiAyMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTMuNDIyNyAxNy4zNjE4TDE2LjkzNDggOC4xOTU5OEMxNy4yMTY0IDcuNDYxMDcgMTYuNTM4OSA2Ljc4MzYxIDE1LjgwNCA3LjA2NTIxTDYuNjM4MjQgMTAuNTc3M0M1LjgwNzc5IDEwLjg5NTUgNS43ODA3OSAxMi4wNiA2LjU5ODEgMTIuMzA4M0wxMC4wNzUxIDEzLjM2NDhDMTAuMzQ1NSAxMy40NDcgMTAuNTUzIDEzLjY1NDUgMTAuNjM1MiAxMy45MjQ5TDExLjY5MTcgMTcuNDAxOUMxMS45NCAxOC4yMTkyIDEzLjEwNDUgMTguMTkyMiAxMy40MjI3IDE3LjM2MThaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class MapArrowSquareLineDuotoneIcon extends StatelessWidget {
  /// Creates the `map-arrow-square` icon in the lineDuotone style.
  const MapArrowSquareLineDuotoneIcon({
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
    name: 'map-arrow-square',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13.4227 17.3618L16.9348 8.19598C17.2164 7.46107 16.5389 6.78361 15.804 7.06521L6.63824 10.5773C5.80779 10.8955 5.78079 12.06 6.5981 12.3083L10.0751 13.3648C10.3455 13.447 10.553 13.6545 10.6352 13.9249L11.6917 17.4019C11.94 18.2192 13.1045 18.1922 13.4227 17.3618Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22Z" stroke="currentColor" stroke-linecap="round"/>''',
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
