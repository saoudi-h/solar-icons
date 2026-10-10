// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik02IDhDNiA1LjE3MTU3IDYgMy43NTczNiA2Ljg3ODY4IDIuODc4NjhDNy43NTczNiAyIDkuMTcxNTcgMiAxMiAyQzE0LjgyODQgMiAxNi4yNDI2IDIgMTcuMTIxMyAyLjg3ODY4QzE4IDMuNzU3MzYgMTggNS4xNzE1NyAxOCA4VjE2QzE4IDE4LjgyODQgMTggMjAuMjQyNiAxNy4xMjEzIDIxLjEyMTNDMTYuMjQyNiAyMiAxNC44Mjg0IDIyIDEyIDIyQzkuMTcxNTcgMjIgNy43NTczNiAyMiA2Ljg3ODY4IDIxLjEyMTNDNiAyMC4yNDI2IDYgMTguODI4NCA2IDE2VjhaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjEgNC41TDIxIDE5LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0zIDQuNUwzIDE5LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class SliderVerticalMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `slider-vertical-minimalistic` icon in the lineDuotone style.
  const SliderVerticalMinimalisticLineDuotoneIcon({
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
    name: 'slider-vertical-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M6 8C6 5.17157 6 3.75736 6.87868 2.87868C7.75736 2 9.17157 2 12 2C14.8284 2 16.2426 2 17.1213 2.87868C18 3.75736 18 5.17157 18 8V16C18 18.8284 18 20.2426 17.1213 21.1213C16.2426 22 14.8284 22 12 22C9.17157 22 7.75736 22 6.87868 21.1213C6 20.2426 6 18.8284 6 16V8Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M21 4.5L21 19.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M3 4.5L3 19.5" stroke="currentColor" stroke-linecap="round"/>''',
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
