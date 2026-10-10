// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `quit-full-screen` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0IDIyQzE0IDE4LjIyODggMTQgMTYuMzQzMSAxNS4xNzE2IDE1LjE3MTZDMTYuMzQzMSAxNCAxOC4yMjg4IDE0IDIyIDE0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiAxNEM1Ljc3MTI0IDE0IDcuNjU2ODUgMTQgOC44Mjg0MyAxNS4xNzE2QzEwIDE2LjM0MzEgMTAgMTguMjI4OCAxMCAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yIDEwQzUuNzcxMjQgMTAgNy42NTY4NSAxMCA4LjgyODQzIDguODI4NDNDMTAgNy42NTY4NSAxMCA1Ljc3MTI0IDEwIDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0yMiAxMEMxOC4yMjg4IDEwIDE2LjM0MzEgMTAgMTUuMTcxNiA4LjgyODQzQzE0IDcuNjU2ODUgMTQgNS43NzEyNCAxNCAyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class QuitFullScreenLineDuotoneIcon extends StatelessWidget {
  /// Creates the `quit-full-screen` icon in the lineDuotone style.
  const QuitFullScreenLineDuotoneIcon({
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
    name: 'quit-full-screen',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14 22C14 18.2288 14 16.3431 15.1716 15.1716C16.3431 14 18.2288 14 22 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 10C5.77124 10 7.65685 10 8.82843 8.82843C10 7.65685 10 5.77124 10 2" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 14C5.77124 14 7.65685 14 8.82843 15.1716C10 16.3431 10 18.2288 10 22" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M22 10C18.2288 10 16.3431 10 15.1716 8.82843C14 7.65685 14 5.77124 14 2" stroke="currentColor" stroke-linecap="round"/>''',
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
