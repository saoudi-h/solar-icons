// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `align-vertical-spacing` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDNMMiAzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDIxTDE4IDIxTTIgMjFMMTQgMjEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSA4TDggOEM2LjExNDM4IDggNS4xNzE1NyA4IDQuNTg1NzkgOC41ODU3OUM0IDkuMTcxNTcgNCAxMC4xMTQ0IDQgMTJDNCAxMy44ODU2IDQgMTQuODI4NCA0LjU4NTc5IDE1LjQxNDJDNS4xNzE1NyAxNiA2LjExNDM4IDE2IDggMTZIMTZDMTcuODg1NiAxNiAxOC44Mjg0IDE2IDE5LjQxNDIgMTUuNDE0MkMyMCAxNC44Mjg0IDIwIDEzLjg4NTYgMjAgMTJDMjAgMTAuMTE0NCAyMCA5LjE3MTU3IDE5LjQxNDIgOC41ODU3OUMxOC44Mjg0IDggMTcuODg1NiA4IDE2IDhMMTMgOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class AlignVerticalSpacingBrokenIcon extends StatelessWidget {
  /// Creates the `align-vertical-spacing` icon in the broken style.
  const AlignVerticalSpacingBrokenIcon({
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
    name: 'align-vertical-spacing',
    style: SolarIconStyle.broken,
    body: r'''<path d="M22 3L2 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 21L18 21M2 21L14 21" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 8L8 8C6.11438 8 5.17157 8 4.58579 8.58579C4 9.17157 4 10.1144 4 12C4 13.8856 4 14.8284 4.58579 15.4142C5.17157 16 6.11438 16 8 16H16C17.8856 16 18.8284 16 19.4142 15.4142C20 14.8284 20 13.8856 20 12C20 10.1144 20 9.17157 19.4142 8.58579C18.8284 8 17.8856 8 16 8L13 8" stroke="currentColor" stroke-linecap="round"/>''',
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
