// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMi41IDE0Ljk1ODVDMTIuMzM3NCAxNC45ODU4IDEyLjE3MDQgMTUgMTIgMTVDMTAuMzQzMSAxNSA5IDEzLjY1NjkgOSAxMkM5IDEwLjM0MzEgMTAuMzQzMSA5IDEyIDlDMTMuNjU2OSA5IDE1IDEwLjM0MzEgMTUgMTJDMTUgMTIuMTcwNCAxNC45ODU4IDEyLjMzNzQgMTQuOTU4NSAxMi41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIgMTJMNCAxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMCAxMkwyMiAxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiA0VjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMjJWMjAiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOCA1LjA3MDI2QzkuMTc2NjkgNC4zODk1OCAxMC41NDI5IDQgMTIgNEMxNi40MTgzIDQgMjAgNy41ODE3MiAyMCAxMkMyMCAxNi40MTgzIDE2LjQxODMgMjAgMTIgMjBDNy41ODE3MiAyMCA0IDE2LjQxODMgNCAxMkM0IDEwLjU0MjkgNC4zODk1OCA5LjE3NjY5IDUuMDcwMjYgOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class GpsBrokenIcon extends StatelessWidget {
  /// Creates the `gps` icon in the broken style.
  const GpsBrokenIcon({
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
    name: 'gps',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12.5 14.9585C12.3374 14.9858 12.1704 15 12 15C10.3431 15 9 13.6569 9 12C9 10.3431 10.3431 9 12 9C13.6569 9 15 10.3431 15 12C15 12.1704 14.9858 12.3374 14.9585 12.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12L4 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 12L22 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 4V2" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22V20" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 5.07026C9.17669 4.38958 10.5429 4 12 4C16.4183 4 20 7.58172 20 12C20 16.4183 16.4183 20 12 20C7.58172 20 4 16.4183 4 12C4 10.5429 4.38958 9.17669 5.07026 8" stroke="currentColor" stroke-linecap="round"/>''',
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
