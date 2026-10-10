// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `garage` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDIyTDIgMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMyAyMi4wMDAxVjExLjM0NzJDMyAxMC40OTAzIDMuMzY2NDQgOS42NzQzMiA0LjAwNjkxIDkuMTA1MDJMMTAuMDA2OSAzLjc3MTY5QzExLjE0MzYgMi43NjEzMyAxMi44NTY0IDIuNzYxMzMgMTMuOTkzMSAzLjc3MTY5TDE5Ljk5MzEgOS4xMDUwMkMyMC42MzM2IDkuNjc0MzIgMjEgMTAuNDkwMyAyMSAxMS4zNDcyVjIyLjAwMDEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAgOUgxNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDE1LjVIMTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSAxOC41SDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE4IDIyVjE2QzE4IDE0LjExNDQgMTggMTMuMTcxNiAxNy40MTQyIDEyLjU4NThDMTYuODI4NCAxMiAxNS44ODU2IDEyIDE0IDEySDEwQzguMTE0MzggMTIgNy4xNzE1NyAxMiA2LjU4NTc5IDEyLjU4NThDNiAxMy4xNzE2IDYgMTQuMTE0NCA2IDE2VjIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class GarageLinearIcon extends StatelessWidget {
  /// Creates the `garage` icon in the linear style.
  const GarageLinearIcon({
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
    name: 'garage',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 22L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 22.0001V11.3472C3 10.4903 3.36644 9.67432 4.00691 9.10502L10.0069 3.77169C11.1436 2.76133 12.8564 2.76133 13.9931 3.77169L19.9931 9.10502C20.6336 9.67432 21 10.4903 21 11.3472V22.0001" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 9H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 15.5H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 18.5H15" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 22V16C18 14.1144 18 13.1716 17.4142 12.5858C16.8284 12 15.8856 12 14 12H10C8.11438 12 7.17157 12 6.58579 12.5858C6 13.1716 6 14.1144 6 16V22" stroke="currentColor" stroke-linecap="round"/>''',
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
