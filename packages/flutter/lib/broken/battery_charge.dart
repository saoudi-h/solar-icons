// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `battery-charge` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIwIDEwQzIwLjk0MjggMTAgMjEuNDE0MiAxMCAyMS43MDcxIDEwLjI5MjlDMjIgMTAuNTg1OCAyMiAxMS4wNTcyIDIyIDEyQzIyIDEyLjk0MjggMjIgMTMuNDE0MiAyMS43MDcxIDEzLjcwNzFDMjEuNDE0MiAxNCAyMC45NDI4IDE0IDIwIDE0VjEwWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMS41IDlMOSAxMkgxMi41TDEwIDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTIgMTJDMiA4LjIyODc2IDIgNi4zNDMxNSAzLjE3MTU3IDUuMTcxNTdDNC4zNDMxNSA0IDYuMjI4NzYgNCAxMCA0SDExLjVDMTUuMjcxMiA0IDE3LjE1NjkgNCAxOC4zMjg0IDUuMTcxNTdDMTkuNSA2LjM0MzE1IDE5LjUgOC4yMjg3NiAxOS41IDEyQzE5LjUgMTUuNzcxMiAxOS41IDE3LjY1NjkgMTguMzI4NCAxOC44Mjg0QzE3LjE1NjkgMjAgMTUuMjcxMiAyMCAxMS41IDIwSDEwQzYuMjI4NzYgMjAgNC4zNDMxNSAyMCAzLjE3MTU3IDE4LjgyODRDMi41MTgzOSAxOC4xNzUyIDIuMjI5MzcgMTcuMzAwMSAyLjEwMTQ5IDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class BatteryChargeBrokenIcon extends StatelessWidget {
  /// Creates the `battery-charge` icon in the broken style.
  const BatteryChargeBrokenIcon({
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
    name: 'battery-charge',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20 10C20.9428 10 21.4142 10 21.7071 10.2929C22 10.5858 22 11.0572 22 12C22 12.9428 22 13.4142 21.7071 13.7071C21.4142 14 20.9428 14 20 14V10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 9L9 12H12.5L10 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 12C2 8.22876 2 6.34315 3.17157 5.17157C4.34315 4 6.22876 4 10 4H11.5C15.2712 4 17.1569 4 18.3284 5.17157C19.5 6.34315 19.5 8.22876 19.5 12C19.5 15.7712 19.5 17.6569 18.3284 18.8284C17.1569 20 15.2712 20 11.5 20H10C6.22876 20 4.34315 20 3.17157 18.8284C2.51839 18.1752 2.22937 17.3001 2.10149 16" stroke="currentColor" stroke-linecap="round"/>''',
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
