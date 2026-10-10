// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOS44OTc4IDE2SDcuODk3NzhDNi45Njc4MSAxNiA2LjUwMjgyIDE2IDYuMTIxMzIgMTYuMTAyMkM1LjA4NjA0IDE2LjM3OTYgNC4yNzc0IDE3LjE4ODMgNCAxOC4yMjM1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTggN0gxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDEwLjVIMTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAgMjJDNy4xNzE1NyAyMiA1Ljc1NzM2IDIyIDQuODc4NjggMjEuMTIxM0M0IDIwLjI0MjYgNCAxOC44Mjg0IDQgMTZWOEM0IDUuMTcxNTcgNCAzLjc1NzM2IDQuODc4NjggMi44Nzg2OEM1Ljc1NzM2IDIgNy4xNzE1NyAyIDEwIDJIMTRDMTYuODI4NCAyIDE4LjI0MjYgMiAxOS4xMjEzIDIuODc4NjhDMjAgMy43NTczNiAyMCA1LjE3MTU3IDIwIDhNMTQgMjJDMTYuODI4NCAyMiAxOC4yNDI2IDIyIDE5LjEyMTMgMjEuMTIxM0MyMCAyMC4yNDI2IDIwIDE4LjgyODQgMjAgMTZWMTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BookBrokenIcon extends StatelessWidget {
  /// Creates the `book` icon in the broken style.
  const BookBrokenIcon({
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
    name: 'book',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M19.8978 16H7.89778C6.96781 16 6.50282 16 6.12132 16.1022C5.08604 16.3796 4.2774 17.1883 4 18.2235" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 7H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 10.5H13" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 22C7.17157 22 5.75736 22 4.87868 21.1213C4 20.2426 4 18.8284 4 16V8C4 5.17157 4 3.75736 4.87868 2.87868C5.75736 2 7.17157 2 10 2H14C16.8284 2 18.2426 2 19.1213 2.87868C20 3.75736 20 5.17157 20 8M14 22C16.8284 22 18.2426 22 19.1213 21.1213C20 20.2426 20 18.8284 20 16V12" stroke="currentColor" stroke-linecap="round"/>''',
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
