// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `battery-half-minimalistic` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiAxMkMyIDguMjI4NzYgMiA2LjM0MzE1IDMuMTcxNTcgNS4xNzE1N0M0LjM0MzE1IDQgNi4yMjg3NiA0IDEwIDRIMTEuNUMxNS4yNzEyIDQgMTcuMTU2OSA0IDE4LjMyODQgNS4xNzE1N0MxOS41IDYuMzQzMTUgMTkuNSA4LjIyODc2IDE5LjUgMTJDMTkuNSAxNS43NzEyIDE5LjUgMTcuNjU2OSAxOC4zMjg0IDE4LjgyODRDMTcuMTU2OSAyMCAxNS4yNzEyIDIwIDExLjUgMjBIMTBDNi4yMjg3NiAyMCA0LjM0MzE1IDIwIDMuMTcxNTcgMTguODI4NEMyIDE3LjY1NjkgMiAxNS43NzEyIDIgMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcgOUM3IDkgNy41IDkuOSA3LjUgMTJDNy41IDE0LjEgNyAxNSA3IDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwLjUgOUMxMC41IDkgMTEgOS45IDExIDEyQzExIDE0LjEgMTAuNSAxNSAxMC41IDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDE0TDIyIDEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class BatteryHalfMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `battery-half-minimalistic` icon in the lineDuotone style.
  const BatteryHalfMinimalisticLineDuotoneIcon({
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
    name: 'battery-half-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7 9C7 9 7.5 9.9 7.5 12C7.5 14.1 7 15 7 15" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 9C10.5 9 11 9.9 11 12C11 14.1 10.5 15 10.5 15" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 14L22 10" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 8.22876 2 6.34315 3.17157 5.17157C4.34315 4 6.22876 4 10 4H11.5C15.2712 4 17.1569 4 18.3284 5.17157C19.5 6.34315 19.5 8.22876 19.5 12C19.5 15.7712 19.5 17.6569 18.3284 18.8284C17.1569 20 15.2712 20 11.5 20H10C6.22876 20 4.34315 20 3.17157 18.8284C2 17.6569 2 15.7712 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
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
