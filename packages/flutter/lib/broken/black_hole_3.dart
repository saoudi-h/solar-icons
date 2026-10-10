// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMTBDMTcgMTAgMTYuNiAyMiA5IDIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyLjMxMTUgMTRDNy4zMTE1MiAxNCA3LjcxMTUyIDIgMTUuMzExNSAyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwIDEyLjMxMTVDMTAgOS41MzI1OSAxMy43MDY4IDguNDIxNzEgMTcgOS4yODc5MU0yMiAxNS4zMTE1QzIyIDEzLjM0MiAyMS4xOTQxIDExLjg1NiAyMCAxMC44MjIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE0IDEyQzE0IDE0Ljc3ODkgMTAuMjkzMiAxNS44ODk4IDcgMTUuMDIzNk0yIDlDMiAxMC42ODAxIDIuNTg2NDMgMTIuMDA4MyAzLjUgMTMuMDA0MSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BlackHole3BrokenIcon extends StatelessWidget {
  /// Creates the `black-hole-3` icon in the broken style.
  const BlackHole3BrokenIcon({
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
    name: 'black-hole-3',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 10C17 10 16.6 22 9 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.3115 14C7.31152 14 7.71152 2 15.3115 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 12.3115C10 9.53259 13.7068 8.42171 17 9.28791M22 15.3115C22 13.342 21.1941 11.856 20 10.8222" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 12C14 14.7789 10.2932 15.8898 7 15.0236M2 9C2 10.6801 2.58643 12.0083 3.5 13.0041" stroke="currentColor" stroke-linecap="round"/>''',
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
