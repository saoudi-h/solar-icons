// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDJIMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik00IDJIMjBWMTIuMjc3NEMyMCAxMy42MTc1IDIwIDE0LjI4NzUgMTkuNzMxOSAxNC44NzgzQzE5LjQ2MzggMTUuNDY5MiAxOC45NTk1IDE1LjkxMDQgMTcuOTUxIDE2Ljc5MjlMMTUuOTUxIDE4LjU0MjlDMTQuMDY4NSAyMC4xOTAxIDEzLjEyNzIgMjEuMDEzNyAxMiAyMS4wMTM3QzEwLjg3MjggMjEuMDEzNyA5LjkzMTUyIDIwLjE5MDEgOC4wNDg5NyAxOC41NDI5TDYuMDQ4OTcgMTYuNzkyOEM1LjA0MDQ2IDE1LjkxMDQgNC41MzYyIDE1LjQ2OTIgNC4yNjgxIDE0Ljg3ODNDNCAxNC4yODc1IDQgMTMuNjE3NSA0IDEyLjI3NzRWMloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOC41IDEzTDE1LjUgMTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOC41IDhMMTUuNSA4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Bill2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `bill-2` icon in the lineDuotone style.
  const Bill2LineDuotoneIcon({
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
    name: 'bill-2',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M2 2H22" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 13L15.5 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 8L15.5 8" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 2H20V12.2774C20 13.6175 20 14.2875 19.7319 14.8783C19.4638 15.4692 18.9595 15.9104 17.951 16.7929L15.951 18.5429C14.0685 20.1901 13.1272 21.0137 12 21.0137C10.8728 21.0137 9.93152 20.1901 8.04897 18.5429L6.04897 16.7928C5.04046 15.9104 4.5362 15.4692 4.2681 14.8783C4 14.2875 4 13.6175 4 12.2774V2Z" stroke="currentColor" stroke-linecap="round"/>''',
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
