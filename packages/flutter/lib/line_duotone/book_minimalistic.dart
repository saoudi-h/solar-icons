// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `book-minimalistic` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQgOEM0IDUuMTcxNTcgNCAzLjc1NzM2IDQuODc4NjggMi44Nzg2OEM1Ljc1NzM2IDIgNy4xNzE1NyAyIDEwIDJIMTRDMTYuODI4NCAyIDE4LjI0MjYgMiAxOS4xMjEzIDIuODc4NjhDMjAgMy43NTczNiAyMCA1LjE3MTU3IDIwIDhWMTZDMjAgMTguODI4NCAyMCAyMC4yNDI2IDE5LjEyMTMgMjEuMTIxM0MxOC4yNDI2IDIyIDE2LjgyODQgMjIgMTQgMjJIMTBDNy4xNzE1NyAyMiA1Ljc1NzM2IDIyIDQuODc4NjggMjEuMTIxM0M0IDIwLjI0MjYgNCAxOC44Mjg0IDQgMTZWOFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0yMCAxNi4wMDAxSDcuODk4MUM2Ljk2ODEyIDE2LjAwMDEgNi41MDMxNCAxNi4wMDAxIDYuMTIxNjQgMTYuMTAyM0M1LjA4NjM2IDE2LjM3OTcgNC4yOTkzNyAxNy4xMDkxIDQuMDIxOTcgMTguMTQ0M003IDE2VjIuMDc2MTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BookMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `book-minimalistic` icon in the lineDuotone style.
  const BookMinimalisticLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M4 8C4 5.17157 4 3.75736 4.87868 2.87868C5.75736 2 7.17157 2 10 2H14C16.8284 2 18.2426 2 19.1213 2.87868C20 3.75736 20 5.17157 20 8V16C20 18.8284 20 20.2426 19.1213 21.1213C18.2426 22 16.8284 22 14 22H10C7.17157 22 5.75736 22 4.87868 21.1213C4 20.2426 4 18.8284 4 16V8Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 16.0001H7.8981C6.96812 16.0001 6.50314 16.0001 6.12164 16.1023C5.08636 16.3797 4.29937 17.1091 4.02197 18.1443M7 16V2.07617" stroke="currentColor" stroke-linecap="round"/>''',
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
