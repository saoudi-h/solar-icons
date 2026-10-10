// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bedside-table-3` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE5IDIyVjIwLjVNNSAyMlYyMC41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIgMTBDMiA2LjIyODc2IDIgNC4zNDMxNSAzLjE3MTU3IDMuMTcxNTdDNC4zNDMxNSAyIDYuMjI4NzYgMiAxMCAySDE0QzE3Ljc3MTIgMiAxOS42NTY5IDIgMjAuODI4NCAzLjE3MTU3QzIyIDQuMzQzMTUgMjIgNi4yMjg3NiAyMiAxMFYxMkMyMiAxNS43NzEyIDIyIDE3LjY1NjkgMjAuODI4NCAxOC44Mjg0QzE5LjY1NjkgMjAgMTcuNzcxMiAyMCAxNCAyMEgxMEM2LjIyODc2IDIwIDQuMzQzMTUgMjAgMy4xNzE1NyAxOC44Mjg0QzIgMTcuNjU2OSAyIDE1Ljc3MTIgMiAxMlYxMFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSAxNS41SDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkgNi41SDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIgMTFIMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BedsideTable3LinearIcon extends StatelessWidget {
  /// Creates the `bedside-table-3` icon in the linear style.
  const BedsideTable3LinearIcon({
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
    name: 'bedside-table-3',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M19 22V20.5M5 22V20.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 10C2 6.22876 2 4.34315 3.17157 3.17157C4.34315 2 6.22876 2 10 2H14C17.7712 2 19.6569 2 20.8284 3.17157C22 4.34315 22 6.22876 22 10V12C22 15.7712 22 17.6569 20.8284 18.8284C19.6569 20 17.7712 20 14 20H10C6.22876 20 4.34315 20 3.17157 18.8284C2 17.6569 2 15.7712 2 12V10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 15.5H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 6.5H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11H22" stroke="currentColor" stroke-linecap="round"/>''',
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
