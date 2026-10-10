// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `align-horizontal-spacing` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMgMkwzIDIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIxIDEwTDIxIDIyTTIxIDJMMjEgNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDE1TDggMTZDOCAxNy44ODU2IDggMTguODI4NCA4LjU4NTc5IDE5LjQxNDJDOS4xNzE1NyAyMCAxMC4xMTQ0IDIwIDEyIDIwQzEzLjg4NTYgMjAgMTQuODI4NCAyMCAxNS40MTQyIDE5LjQxNDJDMTYgMTguODI4NCAxNiAxNy44ODU2IDE2IDE2VjhDMTYgNi4xMTQzOSAxNiA1LjE3MTU3IDE1LjQxNDIgNC41ODU3OUMxNC44Mjg0IDQgMTMuODg1NiA0IDEyIDRDMTAuMTE0NCA0IDkuMTcxNTcgNCA4LjU4NTc5IDQuNTg1NzlDOCA1LjE3MTU3IDggNi4xMTQzOCA4IDhMOCAxMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class AlignHorizontalSpacingBrokenIcon extends StatelessWidget {
  /// Creates the `align-horizontal-spacing` icon in the broken style.
  const AlignHorizontalSpacingBrokenIcon({
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
    name: 'align-horizontal-spacing',
    style: SolarIconStyle.broken,
    body: r'''<path d="M3 2L3 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 10L21 22M21 2L21 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 15L8 16C8 17.8856 8 18.8284 8.58579 19.4142C9.17157 20 10.1144 20 12 20C13.8856 20 14.8284 20 15.4142 19.4142C16 18.8284 16 17.8856 16 16V8C16 6.11439 16 5.17157 15.4142 4.58579C14.8284 4 13.8856 4 12 4C10.1144 4 9.17157 4 8.58579 4.58579C8 5.17157 8 6.11438 8 8L8 11" stroke="currentColor" stroke-linecap="round"/>''',
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
