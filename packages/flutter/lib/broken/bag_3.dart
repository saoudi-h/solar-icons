// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bag-3` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwLjIzMiAxMC41MjU3QzE5LjY0NjggNy40MDQ1MiAxOS4zNTQyIDUuODQzOTMgMTguMjQzMyA0LjkyMTk2QzE3LjEzMjQgNCAxNS41NDQ2IDQgMTIuMzY5IDRIMTEuNjQ3OUM4LjQ3MjI4IDQgNi44ODQ1IDQgNS43NzM2IDQuOTIxOTZDNC42NjI3MSA1Ljg0MzkzIDQuMzcwMDkgNy40MDQ1MiAzLjc4NDg3IDEwLjUyNTdDMi45NjE5NSAxNC45MTQ2IDIuNTUwNDkgMTcuMTA5MSAzLjc1MDExIDE4LjU1NDVDNC45NDk3MyAyMCA3LjE4MjQ0IDIwIDExLjY0NzggMjBIMTIuMzY5QzE2LjgzNDQgMjAgMTkuMDY3MiAyMCAyMC4yNjY4IDE4LjU1NDVDMjAuOTYyOCAxNy43MTU5IDIxLjExNjUgMTYuNjI1MiAyMC45NjIxIDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkuMTcwOSA4QzkuNTgyNzMgOS4xNjUxOSAxMC42OTQgMTAgMTIuMDAwMiAxMEMxMy4zMDY0IDEwIDE0LjQxNzcgOS4xNjUxOSAxNC44Mjk1IDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class Bag3BrokenIcon extends StatelessWidget {
  /// Creates the `bag-3` icon in the broken style.
  const Bag3BrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20.232 10.5257C19.6468 7.40452 19.3542 5.84393 18.2433 4.92196C17.1324 4 15.5446 4 12.369 4H11.6479C8.47228 4 6.8845 4 5.7736 4.92196C4.66271 5.84393 4.37009 7.40452 3.78487 10.5257C2.96195 14.9146 2.55049 17.1091 3.75011 18.5545C4.94973 20 7.18244 20 11.6478 20H12.369C16.8344 20 19.0672 20 20.2668 18.5545C20.9628 17.7159 21.1165 16.6252 20.9621 15" stroke="currentColor" stroke-linecap="round"/>
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
