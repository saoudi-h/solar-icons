// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTEuNTYwNyAxMy41TDEwLjUgMTIuNDM5NEw2LjUzMDMzIDguNDY5NjlDNi4zMTU4MyA4LjI1NTE5IDUuOTkzMjQgOC4xOTEwMyA1LjcxMjk5IDguMzA3MTFDNS40MzI3MyA4LjQyMzIgNS4yNSA4LjY5NjY4IDUuMjUgOS4wMDAwMlYxOEM1LjI1IDE4LjQxNDIgNS41ODU3OSAxOC43NSA2IDE4Ljc1TDE1IDE4Ljc1QzE1LjMwMzMgMTguNzUgMTUuNTc2OCAxOC41NjczIDE1LjY5MjkgMTguMjg3QzE1LjgwOSAxOC4wMDY4IDE1Ljc0NDggMTcuNjg0MiAxNS41MzAzIDE3LjQ2OTdMMTEuNTYwNyAxMy41WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xOC41MzAzIDYuNTMwMzNDMTguODIzMiA2LjIzNzQ0IDE4LjgyMzIgNS43NjI1NiAxOC41MzAzIDUuNDY5NjdDMTguMjM3NCA1LjE3Njc4IDE3Ljc2MjYgNS4xNzY3OCAxNy40Njk3IDUuNDY5NjdMMTAuNSAxMi40MzkzTDExLjU2MDcgMTMuNUwxOC41MzAzIDYuNTMwMzNaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ArrowLeftDownBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-left-down` icon in the boldDuotone style.
  const ArrowLeftDownBoldDuotoneIcon({
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
    name: 'arrow-left-down',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5607 13.5L10.5 12.4394L6.53033 8.46969C6.31583 8.25519 5.99324 8.19103 5.71299 8.30711C5.43273 8.4232 5.25 8.69668 5.25 9.00002V18C5.25 18.4142 5.58579 18.75 6 18.75L15 18.75C15.3033 18.75 15.5768 18.5673 15.6929 18.287C15.809 18.0068 15.7448 17.6842 15.5303 17.4697L11.5607 13.5Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.5303 6.53033C18.8232 6.23744 18.8232 5.76256 18.5303 5.46967C18.2374 5.17678 17.7626 5.17678 17.4697 5.46967L10.5 12.4393L11.5607 13.5L18.5303 6.53033Z" fill="currentColor"/>''',
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
