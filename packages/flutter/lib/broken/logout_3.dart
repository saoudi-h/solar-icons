// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `logout-3` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE1IDEyTDYgMTJNOCAxMEw2IDEyTDggMTQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMjEuOTgyN0MxMC40NDY1IDIxLjkzNTkgOS41MTk5NSAyMS43NjI2IDguODc4NjUgMjEuMTIxM0M4LjExMDI3IDIwLjM1MjkgOC4wMTM4MiAxOS4xNzUgOC4wMDE3MSAxN00xNiAyMS45OTgzQzE4LjE3NSAyMS45ODYyIDE5LjM1MjkgMjEuODg5NyAyMC4xMjEzIDIxLjEyMTNDMjEgMjAuMjQyNiAyMSAxOC44Mjg0IDIxIDE2VjE0VjEwVjhDMjEgNS4xNzE1NyAyMSAzLjc1NzM2IDIwLjEyMTMgMi44Nzg2OEMxOS4yNDI2IDIgMTcuODI4NCAyIDE1IDJIMTRDMTEuMTcxNSAyIDkuNzU3MzMgMiA4Ljg3ODY1IDIuODc4NjhDOC4xMTAyNyAzLjY0NzA2IDguMDEzODIgNC44MjQ5NyA4LjAwMTcxIDciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMyA5LjVWMTQuNUMzIDE2Ljg1NyAzIDE4LjAzNTUgMy43MzIyMyAxOC43Njc4QzQuNDY0NDcgMTkuNSA1LjY0Mjk4IDE5LjUgOCAxOS41SDguMTQxMTFNMy43MzIyMyA1LjIzMjIzQzQuNDY0NDcgNC41IDUuNjQyOTggNC41IDggNC41SDguMTQxMTEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class Logout3BrokenIcon extends StatelessWidget {
  /// Creates the `logout-3` icon in the broken style.
  const Logout3BrokenIcon({
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
    name: 'logout-3',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 12L6 12M8 10L6 12L8 14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 21.9827C10.4465 21.9359 9.51995 21.7626 8.87865 21.1213C8.11027 20.3529 8.01382 19.175 8.00171 17M16 21.9983C18.175 21.9862 19.3529 21.8897 20.1213 21.1213C21 20.2426 21 18.8284 21 16V14V10V8C21 5.17157 21 3.75736 20.1213 2.87868C19.2426 2 17.8284 2 15 2H14C11.1715 2 9.75733 2 8.87865 2.87868C8.11027 3.64706 8.01382 4.82497 8.00171 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 9.5V14.5C3 16.857 3 18.0355 3.73223 18.7678C4.46447 19.5 5.64298 19.5 8 19.5H8.14111M3.73223 5.23223C4.46447 4.5 5.64298 4.5 8 4.5H8.14111" stroke="currentColor" stroke-linecap="round"/>''',
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
