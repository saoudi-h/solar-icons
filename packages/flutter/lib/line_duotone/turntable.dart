// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDEyQzIgNy4yODU5NSAyIDQuOTI4OTMgMy4xNzE1NyAzLjQ2NDQ3QzQuMzQzMTUgMiA2LjIyODc2IDIgMTAgMkgxNEMxNy43NzEyIDIgMTkuNjU2OSAyIDIwLjgyODQgMy40NjQ0N0MyMiA0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTJDMjIgMTYuNzE0IDIyIDE5LjA3MTEgMjAuODI4NCAyMC41MzU1QzE5LjY1NjkgMjIgMTcuNzcxMiAyMiAxNCAyMkgxMEM2LjIyODc2IDIyIDQuMzQzMTUgMjIgMy4xNzE1NyAyMC41MzU1QzIgMTkuMDcxMSAyIDE2LjcxNCAyIDEyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxyZWN0IHg9IjYiIHk9IjgiIHdpZHRoPSI4IiBoZWlnaHQ9IjgiIHJ4PSI0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTcgMTAuNUMxNy44Mjg0IDEwLjUgMTguNSA5LjgyODQzIDE4LjUgOUMxOC41IDguMTcxNTcgMTcuODI4NCA3LjUgMTcgNy41QzE2LjE3MTYgNy41IDE1LjUgOC4xNzE1NyAxNS41IDlDMTUuNSA5LjgyODQzIDE2LjE3MTYgMTAuNSAxNyAxMC41Wk0xNyAxMC41VjE0Ljc2MzlDMTcgMTUuNTIxNSAxNi41NzIgMTYuMjE0IDE1Ljg5NDQgMTYuNTUyOEwxNSAxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class TurntableLineDuotoneIcon extends StatelessWidget {
  /// Creates the `turntable` icon in the lineDuotone style.
  const TurntableLineDuotoneIcon({
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
    name: 'turntable',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.17157 3.46447C4.34315 2 6.22876 2 10 2H14C17.7712 2 19.6569 2 20.8284 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.8284 20.5355C19.6569 22 17.7712 22 14 22H10C6.22876 22 4.34315 22 3.17157 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<rect x="6" y="8" width="8" height="8" rx="4" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M17 10.5C17.8284 10.5 18.5 9.82843 18.5 9C18.5 8.17157 17.8284 7.5 17 7.5C16.1716 7.5 15.5 8.17157 15.5 9C15.5 9.82843 16.1716 10.5 17 10.5ZM17 10.5V14.7639C17 15.5215 16.572 16.214 15.8944 16.5528L15 17" stroke="currentColor" stroke-linecap="round"/>''',
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
