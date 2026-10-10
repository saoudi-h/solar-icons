// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMiAxNkMyMiAxOC4yMDkxIDIwLjIwOTEgMjAgMTggMjBDMTUuNzkwOSAyMCAxNCAxOC4yMDkxIDE0IDE2QzE0IDEzLjc5MDkgMTUuNzkwOSAxMiAxOCAxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgY3g9IjYiIGN5PSIxNiIgcj0iNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNCAxNi4yMTM3TDEzLjM0NDEgMTUuOTc5N0MxMi40NzQ5IDE1LjY2OTUgMTEuNTI1MiAxNS42Njk1IDEwLjY1NTkgMTUuOTc5N0wxMCAxNi4yMTM3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIgMTZMMi43NjMxNSA3LjYwNTMyQzIuODc4MDcgNi4zNDEyMSAyLjkzNTUzIDUuNzA5MTYgMy4zMDU1NCA1LjI0MTk5QzMuNjc1NTQgNC43NzQ4MiA0LjI3NzYzIDQuNTc0MTIgNS40ODE4MSA0LjE3MjczTDYgNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxNkwyMS4yMzY4IDcuNjA1MzJDMjEuMTIxOSA2LjM0MTIxIDIxLjA2NDUgNS43MDkxNiAyMC42OTQ1IDUuMjQxOTlDMjAuMzI0NSA0Ljc3NDgyIDE5LjcyMjQgNC41NzQxMiAxOC41MTgyIDQuMTcyNzNMMTggNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class GlassesBrokenIcon extends StatelessWidget {
  /// Creates the `glasses` icon in the broken style.
  const GlassesBrokenIcon({
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
    name: 'glasses',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 16C22 18.2091 20.2091 20 18 20C15.7909 20 14 18.2091 14 16C14 13.7909 15.7909 12 18 12" stroke="currentColor" stroke-linecap="round"/>
<circle cx="6" cy="16" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 16.2137L13.3441 15.9797C12.4749 15.6695 11.5252 15.6695 10.6559 15.9797L10 16.2137" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 16L2.76315 7.60532C2.87807 6.34121 2.93553 5.70916 3.30554 5.24199C3.67554 4.77482 4.27763 4.57412 5.48181 4.17273L6 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 16L21.2368 7.60532C21.1219 6.34121 21.0645 5.70916 20.6945 5.24199C20.3245 4.77482 19.7224 4.57412 18.5182 4.17273L18 4" stroke="currentColor" stroke-linecap="round"/>''',
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
