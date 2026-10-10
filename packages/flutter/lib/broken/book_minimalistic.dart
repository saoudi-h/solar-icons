// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `book-minimalistic` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTcgMTZWMi41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEwIDIyQzcuMTcxNTcgMjIgNS43NTczNiAyMiA0Ljg3ODY4IDIxLjEyMTNDNCAyMC4yNDI2IDQgMTguODI4NCA0IDE2VjhDNCA1LjE3MTU3IDQgMy43NTczNiA0Ljg3ODY4IDIuODc4NjhDNS43NTczNiAyIDcuMTcxNTcgMiAxMCAySDE0QzE2LjgyODQgMiAxOC4yNDI2IDIgMTkuMTIxMyAyLjg3ODY4QzIwIDMuNzU3MzYgMjAgNS4xNzE1NyAyMCA4TTE0IDIyQzE2LjgyODQgMjIgMTguMjQyNiAyMiAxOS4xMjEzIDIxLjEyMTNDMjAgMjAuMjQyNiAyMCAxOC44Mjg0IDIwIDE2VjEyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIwIDE2SDcuODk4MUM2Ljk2ODEyIDE2IDYuNTAzMTQgMTYgNi4xMjE2NCAxNi4xMDIyQzUuMDg2MzYgMTYuMzc5NiA0LjI5OTM3IDE3LjEwOSA0LjAyMTk3IDE4LjE0NDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BookMinimalisticBrokenIcon extends StatelessWidget {
  /// Creates the `book-minimalistic` icon in the broken style.
  const BookMinimalisticBrokenIcon({
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
    name: 'book-minimalistic',
    style: SolarIconStyle.broken,
    body: r'''<path d="M7 16V2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 22C7.17157 22 5.75736 22 4.87868 21.1213C4 20.2426 4 18.8284 4 16V8C4 5.17157 4 3.75736 4.87868 2.87868C5.75736 2 7.17157 2 10 2H14C16.8284 2 18.2426 2 19.1213 2.87868C20 3.75736 20 5.17157 20 8M14 22C16.8284 22 18.2426 22 19.1213 21.1213C20 20.2426 20 18.8284 20 16V12" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 16H7.8981C6.96812 16 6.50314 16 6.12164 16.1022C5.08636 16.3796 4.29937 17.109 4.02197 18.1443" stroke="currentColor" stroke-linecap="round"/>''',
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
