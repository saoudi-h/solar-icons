// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-high` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjAxNzYgMTkuNDY0NEgxMi4wMTc3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTUuMzMzMDEgMTIuMjk1QzcuMzkzNjEgMTAuMDcwOSAxMC4xNzA3IDkuMDkxNTEgMTIuODYyNCA5LjM1Njg5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE2LjYzMTMgMTAuNjI0QzE3LjM2MDEgMTEuMDY4MSAxOC4wNDU3IDExLjYyNSAxOC42NjY0IDEyLjI5NDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOC42NjY5OSAxNS44OTNDOS4yMTA0IDE1LjMwNjUgOS44NTM0NyAxNC44OTMxIDEwLjUzNzQgMTQuNjUyOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMy4zNzYgMTQuNjIzQzE0LjA5MjQgMTQuODU4MiAxNC43NjcyIDE1LjI4MTUgMTUuMzMzNyAxNS44OTI5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class WiFiHighBrokenIcon extends StatelessWidget {
  /// Creates the `wi-fi-high` icon in the broken style.
  const WiFiHighBrokenIcon({
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
    name: 'wi-fi-high',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.33301 12.295C7.39361 10.0709 10.1707 9.09151 12.8624 9.35689" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.6313 10.624C17.3601 11.0681 18.0457 11.625 18.6664 12.2949" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.66699 15.893C9.2104 15.3065 9.85347 14.8931 10.5374 14.6528" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.376 14.623C14.0924 14.8582 14.7672 15.2815 15.3337 15.8929" stroke="currentColor" stroke-linecap="round"/>''',
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
