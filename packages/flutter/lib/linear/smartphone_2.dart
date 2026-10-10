// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `smartphone-2` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQgMTBDNCA2LjIyODc2IDQgNC4zNDMxNSA1LjE3MTU3IDMuMTcxNTdDNi4zNDMxNSAyIDguMjI4NzYgMiAxMiAyQzE1Ljc3MTIgMiAxNy42NTY5IDIgMTguODI4NCAzLjE3MTU3QzIwIDQuMzQzMTUgMjAgNi4yMjg3NiAyMCAxMFYxNEMyMCAxNy43NzEyIDIwIDE5LjY1NjkgMTguODI4NCAyMC44Mjg0QzE3LjY1NjkgMjIgMTUuNzcxMiAyMiAxMiAyMkM4LjIyODc2IDIyIDYuMzQzMTUgMjIgNS4xNzE1NyAyMC44Mjg0QzQgMTkuNjU2OSA0IDE3Ljc3MTIgNCAxNFYxMFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUgNUg5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBjeD0iMTIiIGN5PSIxOSIgcj0iMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Smartphone2LinearIcon extends StatelessWidget {
  /// Creates the `smartphone-2` icon in the linear style.
  const Smartphone2LinearIcon({
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
    name: 'smartphone-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 10C4 6.22876 4 4.34315 5.17157 3.17157C6.34315 2 8.22876 2 12 2C15.7712 2 17.6569 2 18.8284 3.17157C20 4.34315 20 6.22876 20 10V14C20 17.7712 20 19.6569 18.8284 20.8284C17.6569 22 15.7712 22 12 22C8.22876 22 6.34315 22 5.17157 20.8284C4 19.6569 4 17.7712 4 14V10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 5H9" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="19" r="1" stroke="currentColor" stroke-linecap="round"/>''',
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
