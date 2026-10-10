// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `screencast` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0IDIwQzE3Ljc3MTIgMjAgMTkuNjU2OSAyMCAyMC44Mjg0IDE4LjgyODRDMjIgMTcuNjU2OSAyMiAxNS43NzEyIDIyIDEyQzIyIDguMjI4NzYgMjIgNi4zNDMxNSAyMC44Mjg0IDUuMTcxNTdDMTkuNjU2OSA0IDE3Ljc3MTIgNCAxNCA0SDYuNUM2LjAzNTY2IDQgNS44MDM0OSA0IDUuNjA3OTMgNC4wMTkyNkMzLjcwODgyIDQuMjA2MzEgMi4yMDYzMSA1LjcwODgyIDIuMDE5MjYgNy42MDc5M0MyIDcuODAzNDkgMiA4LjAzNTY2IDIgOC41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTExIDIwQzExIDE1LjAyOTQgNi45NzA1NiAxMSAyIDExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTggMjBDOCAxNi42ODYzIDUuMzEzNzEgMTQgMiAxNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik01IDIwQzUgMTguMzQzMSAzLjY1Njg1IDE3IDIgMTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class ScreencastLinearIcon extends StatelessWidget {
  /// Creates the `screencast` icon in the linear style.
  const ScreencastLinearIcon({
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
    name: 'screencast',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14 20C17.7712 20 19.6569 20 20.8284 18.8284C22 17.6569 22 15.7712 22 12C22 8.22876 22 6.34315 20.8284 5.17157C19.6569 4 17.7712 4 14 4H6.5C6.03566 4 5.80349 4 5.60793 4.01926C3.70882 4.20631 2.20631 5.70882 2.01926 7.60793C2 7.80349 2 8.03566 2 8.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11 20C11 15.0294 6.97056 11 2 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 20C8 16.6863 5.31371 14 2 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 20C5 18.3431 3.65685 17 2 17" stroke="currentColor" stroke-linecap="round"/>''',
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
