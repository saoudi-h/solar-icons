// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDEyQzIgNy4yODU5NSAyIDQuOTI4OTMgMy4xNzE1NyAzLjQ2NDQ3QzQuMzQzMTUgMiA2LjIyODc2IDIgMTAgMkgxNEMxNy43NzEyIDIgMTkuNjU2OSAyIDIwLjgyODQgMy40NjQ0N0MyMiA0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTJDMjIgMTYuNzE0IDIyIDE5LjA3MTEgMjAuODI4NCAyMC41MzU1QzE5LjY1NjkgMjIgMTcuNzcxMiAyMiAxNCAyMkgxMEM2LjIyODc2IDIyIDQuMzQzMTUgMjIgMy4xNzE1NyAyMC41MzU1QzIgMTkuMDcxMSAyIDE2LjcxNCAyIDEyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNSAxN0wxNS44OTQ0IDE2LjU1MjhDMTYuNTcyIDE2LjIxNCAxNyAxNS41MjE1IDE3IDE0Ljc2MzlWMTAuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxyZWN0IHg9IjYiIHk9IjgiIHdpZHRoPSI4IiBoZWlnaHQ9IjgiIHJ4PSI0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1LjUgOUMxNS41IDguMTcxNTcgMTYuMTcxNiA3LjUgMTcgNy41QzE3LjgyODQgNy41IDE4LjUgOC4xNzE1NyAxOC41IDlDMTguNSA5LjgyODQzIDE3LjgyODQgMTAuNSAxNyAxMC41QzE2LjE3MTYgMTAuNSAxNS41IDkuODI4NDMgMTUuNSA5WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class TurntableLinearIcon extends StatelessWidget {
  /// Creates the `turntable` icon in the linear style.
  const TurntableLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.17157 3.46447C4.34315 2 6.22876 2 10 2H14C17.7712 2 19.6569 2 20.8284 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.8284 20.5355C19.6569 22 17.7712 22 14 22H10C6.22876 22 4.34315 22 3.17157 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 17L15.8944 16.5528C16.572 16.214 17 15.5215 17 14.7639V10.5" stroke="currentColor" stroke-linecap="round"/>
<rect x="6" y="8" width="8" height="8" rx="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 9C15.5 8.17157 16.1716 7.5 17 7.5C17.8284 7.5 18.5 8.17157 18.5 9C18.5 9.82843 17.8284 10.5 17 10.5C16.1716 10.5 15.5 9.82843 15.5 9Z" stroke="currentColor" stroke-linecap="round"/>''',
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
