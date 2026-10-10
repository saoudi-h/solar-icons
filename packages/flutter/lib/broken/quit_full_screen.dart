// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `quit-full-screen` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTRDNS43NzEyNCAxNCA3LjY1Njg1IDE0IDguODI4NDMgMTUuMTcxNkMxMCAxNi4zNDMxIDEwIDE4LjIyODggMTAgMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMiAxMEMzLjE2OTc2IDEwIDQuMTU4MTEgMTAgNSA5Ljk2NTA0TTEwIDJDMTAgNS43NzEyNCAxMCA3LjY1Njg1IDguODI4NDMgOC44Mjg0MyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNCAyMkMxNCAxOC4yMjg4IDE0IDE2LjM0MzEgMTUuMTcxNiAxNS4xNzE2TTIyIDE0QzIwLjgzMDIgMTQgMTkuODQxOSAxNCAxOSAxNC4wMzUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjIgMTBDMTguMjI4OCAxMCAxNi4zNDMxIDEwIDE1LjE3MTYgOC44Mjg0M0MxNCA3LjY1Njg1IDE0IDUuNzcxMjQgMTQgMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class QuitFullScreenBrokenIcon extends StatelessWidget {
  /// Creates the `quit-full-screen` icon in the broken style.
  const QuitFullScreenBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 14C5.77124 14 7.65685 14 8.82843 15.1716C10 16.3431 10 18.2288 10 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 10C3.16976 10 4.15811 10 5 9.96504M10 2C10 5.77124 10 7.65685 8.82843 8.82843" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 22C14 18.2288 14 16.3431 15.1716 15.1716M22 14C20.8302 14 19.8419 14 19 14.035" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 10C18.2288 10 16.3431 10 15.1716 8.82843C14 7.65685 14 5.77124 14 2" stroke="currentColor" stroke-linecap="round"/>''',
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
