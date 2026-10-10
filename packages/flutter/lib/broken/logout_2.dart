// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNSAxMkwyIDEyTTUuNSAxNUwyIDEyTDUuNSA5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTkuMDAxOTUgN0M5LjAxNDA2IDQuODI0OTcgOS4xMTA1MSAzLjY0NzA2IDkuODc4ODkgMi44Nzg2OEMxMC43NTc2IDIgMTIuMTcxOCAyIDE1LjAwMDIgMkwxNi4wMDAyIDJDMTguODI4NiAyIDIwLjI0MjkgMiAyMS4xMjE1IDIuODc4NjhDMjIuMDAwMiAzLjc1NzM2IDIyLjAwMDIgNS4xNzE1NyAyMi4wMDAyIDhMMjIuMDAwMiAxNkMyMi4wMDAyIDE4LjgyODQgMjIuMDAwMiAyMC4yNDI2IDIxLjEyMTUgMjEuMTIxM0MyMC4zNTMxIDIxLjg4OTcgMTkuMTc1MiAyMS45ODYyIDE3IDIxLjk5ODNNOS4wMDE5NSAxN0M5LjAxNDA2IDE5LjE3NSA5LjExMDUxIDIwLjM1MjkgOS44Nzg4OSAyMS4xMjEzQzEwLjUyMDIgMjEuNzYyNiAxMS40NDY3IDIxLjkzNTkgMTMgMjEuOTgyNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class Logout2BrokenIcon extends StatelessWidget {
  /// Creates the `logout-2` icon in the broken style.
  const Logout2BrokenIcon({
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
    name: 'logout-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 12L2 12M5.5 15L2 12L5.5 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.00195 7C9.01406 4.82497 9.11051 3.64706 9.87889 2.87868C10.7576 2 12.1718 2 15.0002 2L16.0002 2C18.8286 2 20.2429 2 21.1215 2.87868C22.0002 3.75736 22.0002 5.17157 22.0002 8L22.0002 16C22.0002 18.8284 22.0002 20.2426 21.1215 21.1213C20.3531 21.8897 19.1752 21.9862 17 21.9983M9.00195 17C9.01406 19.175 9.11051 20.3529 9.87889 21.1213C10.5202 21.7626 11.4467 21.9359 13 21.9827" stroke="currentColor" stroke-linecap="round"/>''',
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
