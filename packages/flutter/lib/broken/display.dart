// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `display` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDEwVjlDMjIgNi4xNzE1NyAyMiA0Ljc1NzM2IDIxLjEyMTMgMy44Nzg2OEMyMC4yNDI2IDMgMTguODI4NCAzIDE2IDNIOEM1LjE3MTU3IDMgMy43NTczNiAzIDIuODc4NjggMy44Nzg2OEMyLjU3ODg4IDQuMTc4NDggMi4zODEzNyA0LjU0MDYyIDIuMjUxMjUgNU0yIDlWMTBDMiAxMi44Mjg0IDIgMTQuMjQyNiAyLjg3ODY4IDE1LjEyMTNDMy43NTczNiAxNiA1LjE3MTU3IDE2IDggMTZIMTZDMTguODI4NCAxNiAyMC4yNDI2IDE2IDIxLjEyMTMgMTUuMTIxM0MyMS40MjExIDE0LjgyMTUgMjEuNjE4NiAxNC40NTk0IDIxLjc0ODcgMTQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMTlWMTYuNU0xMiAxOUwxOCAyMU0xMiAxOUw2IDIxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class DisplayBrokenIcon extends StatelessWidget {
  /// Creates the `display` icon in the broken style.
  const DisplayBrokenIcon({
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
    name: 'display',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 10V9C22 6.17157 22 4.75736 21.1213 3.87868C20.2426 3 18.8284 3 16 3H8C5.17157 3 3.75736 3 2.87868 3.87868C2.57888 4.17848 2.38137 4.54062 2.25125 5M2 9V10C2 12.8284 2 14.2426 2.87868 15.1213C3.75736 16 5.17157 16 8 16H16C18.8284 16 20.2426 16 21.1213 15.1213C21.4211 14.8215 21.6186 14.4594 21.7487 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19V16.5M12 19L18 21M12 19L6 21" stroke="currentColor" stroke-linecap="round"/>''',
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
