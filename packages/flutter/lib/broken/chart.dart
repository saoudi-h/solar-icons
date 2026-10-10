// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chart` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDIySDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjEgMjJWMTQuNUMyMSAxMy42NzE2IDIwLjMyODQgMTMgMTkuNSAxM0gxNi41QzE1LjY3MTYgMTMgMTUgMTMuNjcxNiAxNSAxNC41VjIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDIyVjlNOSAyMlY1QzkgMy41ODU3OSA5IDIuODc4NjggOS40MzkzNCAyLjQzOTM0QzkuODc4NjggMiAxMC41ODU4IDIgMTIgMkMxMy40MTQyIDIgMTQuMTIxMyAyIDE0LjU2MDcgMi40MzkzNEMxNSAyLjg3ODY4IDE1IDMuNTg1NzkgMTUgNVY1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTkgMjJWOS41QzkgOC42NzE1NyA4LjMyODQzIDggNy41IDhINC41QzMuNjcxNTcgOCAzIDguNjcxNTcgMyA5LjVWMTZNMyAyMlYxOS43NSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ChartBrokenIcon extends StatelessWidget {
  /// Creates the `chart` icon in the broken style.
  const ChartBrokenIcon({
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
    name: 'chart',
    style: SolarIconStyle.broken,
    body: r'''<path d="M22 22H2" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 22V14.5C21 13.6716 20.3284 13 19.5 13H16.5C15.6716 13 15 13.6716 15 14.5V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 22V9M9 22V5C9 3.58579 9 2.87868 9.43934 2.43934C9.87868 2 10.5858 2 12 2C13.4142 2 14.1213 2 14.5607 2.43934C15 2.87868 15 3.58579 15 5V5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 22V9.5C9 8.67157 8.32843 8 7.5 8H4.5C3.67157 8 3 8.67157 3 9.5V16M3 22V19.75" stroke="currentColor" stroke-linecap="round"/>''',
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
