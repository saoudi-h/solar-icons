// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bag-3` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuNzQxODEgMTguNTU0NUMzLjc0MTgxIDE4LjU1NDUgMy43NDE4MSAxOC41NTQ1IDMuNzQxODEgMTguNTU0NUM0Ljk0MTQzIDIwIDcuMTc0MTQgMjAgMTEuNjM5NSAyMEgxMi4zNjA3QzE2LjgyNjEgMjAgMTkuMDU4OSAyMCAyMC4yNTg1IDE4LjU1NDVNMy43NDE4MSAxOC41NTQ1QzIuNTQyMTkgMTcuMTA5MSAyLjk1MzY1IDE0LjkxNDYgMy43NzY1NyAxMC41MjU3QzQuMzYxNzkgNy40MDQ1MiA0LjY1NDQxIDUuODQzOTMgNS43NjUzIDQuOTIxOTZNMjAuMjU4NSAxOC41NTQ1QzIwLjI1ODUgMTguNTU0NSAyMC4yNTg1IDE4LjU1NDUgMjAuMjU4NSAxOC41NTQ1QzIxLjQ1ODEgMTcuMTA5MSAyMS4wNDY2IDE0LjkxNDYgMjAuMjIzNyAxMC41MjU3QzE5LjYzODUgNy40MDQ1MiAxOS4zNDU5IDUuODQzOTMgMTguMjM1IDQuOTIxOTZNMTguMjM1IDQuOTIxOTZDMTguMjM1IDQuOTIxOTYgMTguMjM1IDQuOTIxOTYgMTguMjM1IDQuOTIxOTZDMTcuMTI0MSA0IDE1LjUzNjMgNCAxMi4zNjA3IDRIMTEuNjM5NUM4LjQ2Mzk4IDQgNi44NzYyIDQgNS43NjUzIDQuOTIxOTZDNS43NjUzIDQuOTIxOTYgNS43NjUzIDQuOTIxOTYgNS43NjUzIDQuOTIxOTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOS4xNzA5IDhDOS41ODI3MyA5LjE2NTE5IDEwLjY5NCAxMCAxMi4wMDAyIDEwQzEzLjMwNjQgMTAgMTQuNDE3NyA5LjE2NTE5IDE0LjgyOTUgOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class Bag3LinearIcon extends StatelessWidget {
  /// Creates the `bag-3` icon in the linear style.
  const Bag3LinearIcon({
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
    name: 'bag-3',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3.74181 18.5545C3.74181 18.5545 3.74181 18.5545 3.74181 18.5545C4.94143 20 7.17414 20 11.6395 20H12.3607C16.8261 20 19.0589 20 20.2585 18.5545M3.74181 18.5545C2.54219 17.1091 2.95365 14.9146 3.77657 10.5257C4.36179 7.40452 4.65441 5.84393 5.7653 4.92196M20.2585 18.5545C20.2585 18.5545 20.2585 18.5545 20.2585 18.5545C21.4581 17.1091 21.0466 14.9146 20.2237 10.5257C19.6385 7.40452 19.3459 5.84393 18.235 4.92196M18.235 4.92196C18.235 4.92196 18.235 4.92196 18.235 4.92196C17.1241 4 15.5363 4 12.3607 4H11.6395C8.46398 4 6.8762 4 5.7653 4.92196C5.7653 4.92196 5.7653 4.92196 5.7653 4.92196" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.1709 8C9.58273 9.16519 10.694 10 12.0002 10C13.3064 10 14.4177 9.16519 14.8295 8" stroke="currentColor" stroke-linecap="round"/>''',
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
