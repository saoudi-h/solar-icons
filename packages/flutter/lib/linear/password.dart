// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDEyQzIgOC4yMjg3NiAyIDYuMzQzMTUgMy4xNzE1NyA1LjE3MTU3QzQuMzQzMTUgNCA2LjIyODc2IDQgMTAgNEgxNEMxNy43NzEyIDQgMTkuNjU2OSA0IDIwLjgyODQgNS4xNzE1N0MyMiA2LjM0MzE1IDIyIDguMjI4NzYgMjIgMTJDMjIgMTUuNzcxMiAyMiAxNy42NTY5IDIwLjgyODQgMTguODI4NEMxOS42NTY5IDIwIDE3Ljc3MTIgMjAgMTQgMjBIMTBDNi4yMjg3NiAyMCA0LjM0MzE1IDIwIDMuMTcxNTcgMTguODI4NEMyIDE3LjY1NjkgMiAxNS43NzEyIDIgMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyLjAwMDIgMTBWMTRNMTAuMjY3OCAxMUwxMy43MzE5IDEzTTEzLjczMTcgMTFMMTAuMjY3NiAxMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik02LjczMjY2IDEwVjE0TTUuMDAwMjMgMTFMOC40NjQzNCAxM004LjQ2NDEgMTFMNSAxMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNy4yNjgxIDEwVjE0TTE1LjUzNTYgMTFMMTguOTk5NyAxM00xOC45OTk1IDExTDE1LjUzNTQgMTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PasswordLinearIcon extends StatelessWidget {
  /// Creates the `password` icon in the linear style.
  const PasswordLinearIcon({
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
    name: 'password',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 8.22876 2 6.34315 3.17157 5.17157C4.34315 4 6.22876 4 10 4H14C17.7712 4 19.6569 4 20.8284 5.17157C22 6.34315 22 8.22876 22 12C22 15.7712 22 17.6569 20.8284 18.8284C19.6569 20 17.7712 20 14 20H10C6.22876 20 4.34315 20 3.17157 18.8284C2 17.6569 2 15.7712 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0002 10V14M10.2678 11L13.7319 13M13.7317 11L10.2676 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.73266 10V14M5.00023 11L8.46434 13M8.4641 11L5 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.2681 10V14M15.5356 11L18.9997 13M18.9995 11L15.5354 13" stroke="currentColor" stroke-linecap="round"/>''',
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
