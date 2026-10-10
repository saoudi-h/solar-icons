// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAxNEMxMC44OTU0IDE0IDEwIDEzLjEwNDYgMTAgMTJDMTAgMTAuODk1NCAxMC44OTU0IDEwIDEyIDEwQzEzLjEwNDYgMTAgMTQgMTAuODk1NCAxNCAxMkMxNCAxMy4xMDQ2IDEzLjEwNDYgMTQgMTIgMTRaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE0IDZDMTIuODk1NCA2IDEyIDUuMTA0NTcgMTIgNEMxMiAyLjg5NTQzIDEyLjg5NTQgMiAxNCAyQzE1LjEwNDYgMiAxNiAyLjg5NTQzIDE2IDRDMTYgNS4xMDQ1NyAxNS4xMDQ2IDYgMTQgNloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAgMjJDMTEuMTA0NiAyMiAxMiAyMS4xMDQ2IDEyIDIwQzEyIDE4Ljg5NTQgMTEuMTA0NiAxOCAxMCAxOEM4Ljg5NTQzIDE4IDggMTguODk1NCA4IDIwQzggMjEuMTA0NiA4Ljg5NTQzIDIyIDEwIDIyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTEyIDIwSDE5TTE5IDEySDE0TTE5IDRIMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xMiA0TDUgNE0xMCAxMkg1TTUgMjBINy42NjY2NyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class Tuning4LineDuotoneIcon extends StatelessWidget {
  /// Creates the `tuning-4` icon in the lineDuotone style.
  const Tuning4LineDuotoneIcon({
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
    name: 'tuning-4',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 14C10.8954 14 10 13.1046 10 12C10 10.8954 10.8954 10 12 10C13.1046 10 14 10.8954 14 12C14 13.1046 13.1046 14 12 14Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 6C12.8954 6 12 5.10457 12 4C12 2.89543 12.8954 2 14 2C15.1046 2 16 2.89543 16 4C16 5.10457 15.1046 6 14 6Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 22C11.1046 22 12 21.1046 12 20C12 18.8954 11.1046 18 10 18C8.89543 18 8 18.8954 8 20C8 21.1046 8.89543 22 10 22Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 20H19M19 12H14M19 4H16" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 4L5 4M10 12H5M5 20H7.66667" stroke="currentColor" stroke-linecap="round"/>''',
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
