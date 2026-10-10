// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `lock-password-unlocked` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTZDMiAxMy4xNzE2IDIgMTEuNzU3NCAyLjg3ODY4IDEwLjg3ODdDMy43NTczNiAxMCA1LjE3MTU3IDEwIDggMTBIMTZDMTguODI4NCAxMCAyMC4yNDI2IDEwIDIxLjEyMTMgMTAuODc4N0MyMiAxMS43NTc0IDIyIDEzLjE3MTYgMjIgMTZDMjIgMTguODI4NCAyMiAyMC4yNDI2IDIxLjEyMTMgMjEuMTIxM0MyMC4yNDI2IDIyIDE4LjgyODQgMjIgMTYgMjJIOEM1LjE3MTU3IDIyIDMuNzU3MzYgMjIgMi44Nzg2OCAyMS4xMjEzQzIgMjAuMjQyNiAyIDE4LjgyODQgMiAxNloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik02IDEwVjhDNiA0LjY4NjI5IDguNjg2MjkgMiAxMiAyQzE0Ljc5NTggMiAxNy4xNDQ5IDMuOTEyMTYgMTcuODExIDYuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTggMTZIOC4wMDlNMTEuOTkxIDE2SDEyTTE1Ljk5MSAxNkgxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class LockPasswordUnlockedLineDuotoneIcon extends StatelessWidget {
  /// Creates the `lock-password-unlocked` icon in the lineDuotone style.
  const LockPasswordUnlockedLineDuotoneIcon({
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
    name: 'lock-password-unlocked',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 16C2 13.1716 2 11.7574 2.87868 10.8787C3.75736 10 5.17157 10 8 10H16C18.8284 10 20.2426 10 21.1213 10.8787C22 11.7574 22 13.1716 22 16C22 18.8284 22 20.2426 21.1213 21.1213C20.2426 22 18.8284 22 16 22H8C5.17157 22 3.75736 22 2.87868 21.1213C2 20.2426 2 18.8284 2 16Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6 10V8C6 4.68629 8.68629 2 12 2C14.7958 2 17.1449 3.91216 17.811 6.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M8 16H8.009M11.991 16H12M15.991 16H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
