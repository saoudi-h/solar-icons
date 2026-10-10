// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `shield-check` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkuNSAxMi40TDEwLjkyODYgMTRMMTQuNSAxMCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0zIDEwLjQxNjdDMyA3LjIxOTA3IDMgNS42MjAyOCAzLjM3NzUyIDUuMDgyNDFDMy43NTUwMyA0LjU0NDU0IDUuMjU4MzIgNC4wMjk5NiA4LjI2NDkxIDMuMDAwNzlMOC44Mzc3MiAyLjgwNDcyQzEwLjQwNSAyLjI2ODI0IDExLjE4ODYgMiAxMiAyQzEyLjgxMTQgMiAxMy41OTUgMi4yNjgyNCAxNS4xNjIzIDIuODA0NzJMMTUuNzM1MSAzLjAwMDc5QzE4Ljc0MTcgNC4wMjk5NiAyMC4yNDUgNC41NDQ1NCAyMC42MjI1IDUuMDgyNDFDMjEgNS42MjAyOCAyMSA3LjIxOTA3IDIxIDEwLjQxNjdDMjEgMTAuODk5NiAyMSAxMS40MjM0IDIxIDExLjk5MTRDMjEgMTQuNDk2MyAyMC4xNjMyIDE2LjQyODQgMTkgMTcuOTA0MU0zLjE5Mjg0IDE0QzQuMDUwMjYgMTguMjk4NCA3LjU3NjQxIDIwLjUxMjkgOS44OTg1NiAyMS41MjczQzEwLjYyIDIxLjg0MjQgMTAuOTgwNyAyMiAxMiAyMkMxMy4wMTkzIDIyIDEzLjM4IDIxLjg0MjQgMTQuMTAxNCAyMS41MjczQzE0LjY3OTYgMjEuMjc0NyAxNS4zMzI0IDIwLjk0NzggMTYgMjAuNTMyOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ShieldCheckBrokenIcon extends StatelessWidget {
  /// Creates the `shield-check` icon in the broken style.
  const ShieldCheckBrokenIcon({
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
    name: 'shield-check',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9.5 12.4L10.9286 14L14.5 10" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3 10.4167C3 7.21907 3 5.62028 3.37752 5.08241C3.75503 4.54454 5.25832 4.02996 8.26491 3.00079L8.83772 2.80472C10.405 2.26824 11.1886 2 12 2C12.8114 2 13.595 2.26824 15.1623 2.80472L15.7351 3.00079C18.7417 4.02996 20.245 4.54454 20.6225 5.08241C21 5.62028 21 7.21907 21 10.4167C21 10.8996 21 11.4234 21 11.9914C21 14.4963 20.1632 16.4284 19 17.9041M3.19284 14C4.05026 18.2984 7.57641 20.5129 9.89856 21.5273C10.62 21.8424 10.9807 22 12 22C13.0193 22 13.38 21.8424 14.1014 21.5273C14.6796 21.2747 15.3324 20.9478 16 20.5328" stroke="currentColor" stroke-linecap="round"/>''',
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
