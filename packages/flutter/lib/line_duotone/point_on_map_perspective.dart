// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `point-on-map-perspective` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjEuMTU2OCAyMS4wODc1TDIuODQyNzcgMTAuOTEzMU0zLjA0MTUgMjEuMjY5N0wxMS45OTk5IDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTcgOEMxOC42NTY5IDggMjAgNi42NTY4NSAyMCA1QzIwIDMuMzQzMTUgMTguNjU2OSAyIDE3IDJDMTUuMzQzMSAyIDE0IDMuMzQzMTUgMTQgNUMxNCA2LjY1Njg1IDE1LjM0MzEgOCAxNyA4Wk0xNyA4VjEzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIxLjEyMTMgMjEuMTIxM0MyMiAyMC4yNDI2IDIyIDE4LjgyODQgMjIgMTZDMjIgMTMuMTcxNiAyMiAxMS43NTc0IDIxLjEyMTMgMTAuODc4N00yMS4xMjEzIDEwLjg3ODdDMjAuMjQyNiAxMCAxOC44Mjg0IDEwIDE2IDEwTDggMTBDNS4xNzE1NyAxMCAzLjc1NzM2IDEwIDIuODc4NjggMTAuODc4N0MyIDExLjc1NzQgMiAxMy4xNzE2IDIgMTZDMiAxOC44Mjg0IDIgMjAuMjQyNiAyLjg3ODY4IDIxLjEyMTNDMy43NTczNiAyMiA1LjE3MTU3IDIyIDggMjJIMTZDMTguODI4NCAyMiAyMC4yNDI2IDIyIDIxLjEyMTMgMjEuMTIxM00yMS4xMjEzIDIxLjEyMTNWMjEuMTIxM1pNMjEuMTIxMyAxMC44Nzg3VjEwLjg3ODdaTTIuODc4NjggMTAuODc4N1YxMC44Nzg3Wk0yLjg3ODY4IDIxLjEyMTNWMjEuMTIxM1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PointOnMapPerspectiveLineDuotoneIcon extends StatelessWidget {
  /// Creates the `point-on-map-perspective` icon in the lineDuotone style.
  const PointOnMapPerspectiveLineDuotoneIcon({
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
    name: 'point-on-map-perspective',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21.1213 21.1213C22 20.2426 22 18.8284 22 16C22 13.1716 22 11.7574 21.1213 10.8787M21.1213 10.8787C20.2426 10 18.8284 10 16 10L8 10C5.17157 10 3.75736 10 2.87868 10.8787C2 11.7574 2 13.1716 2 16C2 18.8284 2 20.2426 2.87868 21.1213C3.75736 22 5.17157 22 8 22H16C18.8284 22 20.2426 22 21.1213 21.1213M21.1213 21.1213V21.1213ZM21.1213 10.8787V10.8787ZM2.87868 10.8787V10.8787ZM2.87868 21.1213V21.1213Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M21.1568 21.0875L2.84277 10.9131M3.0415 21.2697L11.9999 16" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M17 8C18.6569 8 20 6.65685 20 5C20 3.34315 18.6569 2 17 2C15.3431 2 14 3.34315 14 5C14 6.65685 15.3431 8 17 8ZM17 8V13" stroke="currentColor" stroke-linecap="round"/>''',
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
