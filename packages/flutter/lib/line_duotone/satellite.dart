// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE2LjE2MDIgNy44NDAxQzE4LjYyMjkgMTAuMzAyNyAyMC40Njk5IDEwLjkxODIgMjAuNDY5OSAxMC45MTgyTDE0LjMxMzIgMjIuMDAwMk0xNi4xNjAyIDcuODQwMUMxMy42OTc2IDUuMzc3NDcgMTMuMDgyIDMuNTMwMjcgMTMuMDgyIDMuNTMwMjdMMiA5LjY4NzA4TTE2LjE2MDIgNy44NDAxTDUgMTkuMDAwMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMy4wODE4IDEwLjkxOEMxNS4xMjIgMTIuOTU4MSAxOC40Mjk3IDEyLjk1ODEgMjAuNDY5OCAxMC45MThDMjIuNTA5OSA4Ljg3Nzg1IDIyLjUwOTkgNS41NzAxOSAyMC40Njk4IDMuNTMwMDhDMTguNDI5NyAxLjQ4OTk3IDE1LjEyMiAxLjQ4OTk3IDEzLjA4MTggMy41MzAwOEMxMS4wNDE3IDUuNTcwMTkgMTEuMDQxNyA4Ljg3Nzg1IDEzLjA4MTggMTAuOTE4WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class SatelliteLineDuotoneIcon extends StatelessWidget {
  /// Creates the `satellite` icon in the lineDuotone style.
  const SatelliteLineDuotoneIcon({
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
    name: 'satellite',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13.0818 10.918C15.122 12.9581 18.4297 12.9581 20.4698 10.918C22.5099 8.87785 22.5099 5.57019 20.4698 3.53008C18.4297 1.48997 15.122 1.48997 13.0818 3.53008C11.0417 5.57019 11.0417 8.87785 13.0818 10.918Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M16.1602 7.8401C18.6229 10.3027 20.4699 10.9182 20.4699 10.9182L14.3132 22.0002M16.1602 7.8401C13.6976 5.37747 13.082 3.53027 13.082 3.53027L2 9.68708M16.1602 7.8401L5 19.0002" stroke="currentColor" stroke-linecap="round"/>''',
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
