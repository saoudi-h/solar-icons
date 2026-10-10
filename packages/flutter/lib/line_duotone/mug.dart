// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTE3LjAwMDIgMTNIMy4wMDE3NCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0zIDdDMyA1LjExNDM4IDMgNC4xNzE1NyAzLjU4NTc5IDMuNTg1NzlDNC4xNzE1NyAzIDUuMTE0MzggMyA3IDNIMTNDMTQuODg1NiAzIDE1LjgyODQgMyAxNi40MTQyIDMuNTg1NzlDMTcgNC4xNzE1NyAxNyA1LjExNDM4IDE3IDdWMTJDMTcgMTQuODI4NCAxNyAxNi4yNDI2IDE2LjEyMTMgMTcuMTIxM0MxNS4yNDI2IDE4IDEzLjgyODQgMTggMTEgMThIOUM2LjE3MTU3IDE4IDQuNzU3MzYgMTggMy44Nzg2OCAxNy4xMjEzQzMgMTYuMjQyNiAzIDE0LjgyODQgMyAxMlY3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNyAxM0gxOEMyMC4yMDkxIDEzIDIyIDExLjIwOTEgMjIgOUMyMiA2Ljc5MDg2IDIwLjIwOTEgNSAxOCA1SDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjIgMjFMMiAyMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNyAxM0gxOEMyMC4yMDkxIDEzIDIyIDExLjIwOTEgMjIgOUMyMiA2Ljc5MDg2IDIwLjIwOTEgNSAxOCA1SDE2Ljk0OTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class MugLineDuotoneIcon extends StatelessWidget {
  /// Creates the `mug` icon in the lineDuotone style.
  const MugLineDuotoneIcon({
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
    name: 'mug',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3 7C3 5.11438 3 4.17157 3.58579 3.58579C4.17157 3 5.11438 3 7 3H13C14.8856 3 15.8284 3 16.4142 3.58579C17 4.17157 17 5.11438 17 7V12C17 14.8284 17 16.2426 16.1213 17.1213C15.2426 18 13.8284 18 11 18H9C6.17157 18 4.75736 18 3.87868 17.1213C3 16.2426 3 14.8284 3 12V7Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 13H18C20.2091 13 22 11.2091 22 9C22 6.79086 20.2091 5 18 5H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 13H18C20.2091 13 22 11.2091 22 9C22 6.79086 20.2091 5 18 5H16.9493" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M17.0002 13H3.00174" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M22 21L2 21" stroke="currentColor" stroke-linecap="round"/>''',
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
