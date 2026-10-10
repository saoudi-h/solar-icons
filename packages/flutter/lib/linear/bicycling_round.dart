// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bicycling-round` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTQiIGN5PSI0IiByPSIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBjeD0iNiIgY3k9IjE4IiByPSIzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBjeD0iMTgiIGN5PSIxOCIgcj0iMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xOC41MDAyIDkuOTk5OTdIMTQuNTgyNEMxNC4yMDU0IDkuOTk5OTcgMTMuODM5NiA5Ljg3MjEzIDEzLjU0NDYgOS42MzczM0wxMS4zODYyIDcuOTE5MTZDMTAuMTE5NiA2LjkxMDg0IDguMjUxOTIgNy4yNzEwMiA3LjQ1MTA4IDguNjc4MDZDNi42NzU4NyAxMC4wNDAxIDcuMjUyMTYgMTEuNzczNiA4LjY4ODUzIDEyLjQwMDRMMTEuNzc5MiAxMy43NDlDMTIuNzMxNSAxNC4xNjQ2IDEzLjE2OTggMTUuMjcwOCAxMi43NjA1IDE2LjIyNThMMTIuMDAwMiAxOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BicyclingRoundLinearIcon extends StatelessWidget {
  /// Creates the `bicycling-round` icon in the linear style.
  const BicyclingRoundLinearIcon({
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
    name: 'bicycling-round',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="14" cy="4" r="2" stroke="currentColor" stroke-linecap="round"/>
<circle cx="6" cy="18" r="3" stroke="currentColor" stroke-linecap="round"/>
<circle cx="18" cy="18" r="3" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.5002 9.99997H14.5824C14.2054 9.99997 13.8396 9.87213 13.5446 9.63733L11.3862 7.91916C10.1196 6.91084 8.25192 7.27102 7.45108 8.67806C6.67587 10.0401 7.25216 11.7736 8.68853 12.4004L11.7792 13.749C12.7315 14.1646 13.1698 15.2708 12.7605 16.2258L12.0002 18" stroke="currentColor" stroke-linecap="round"/>''',
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
