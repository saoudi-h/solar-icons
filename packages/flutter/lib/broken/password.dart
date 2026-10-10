// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `password` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDEwVjE0TTEwLjI2NzYgMTFMMTMuNzMxNyAxM00xMy43MzE0IDExTDEwLjI2NzMgMTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNi43MzI0MSAxMFYxNE00Ljk5OTk5IDExTDguNDY0MDkgMTNNOC40NjM4NiAxMUw0Ljk5OTc2IDEzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE3LjI2ODEgMTBWMTRNMTUuNTM1NiAxMUwxOC45OTk3IDEzTTE4Ljk5OTUgMTFMMTUuNTM1NCAxMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxMkMyMiAxNS43NzEyIDIyIDE3LjY1NjkgMjAuODI4NCAxOC44Mjg0QzE5LjY1NjkgMjAgMTcuNzcxMiAyMCAxNCAyMEgxMEM2LjIyODc2IDIwIDQuMzQzMTUgMjAgMy4xNzE1NyAxOC44Mjg0QzIgMTcuNjU2OSAyIDE1Ljc3MTIgMiAxMkMyIDguMjI4NzYgMiA2LjM0MzE1IDMuMTcxNTcgNS4xNzE1N0M0LjM0MzE1IDQgNi4yMjg3NiA0IDEwIDRIMTRDMTcuNzcxMiA0IDE5LjY1NjkgNCAyMC44Mjg0IDUuMTcxNTdDMjEuNDgxNiA1LjgyNDc1IDIxLjc3MDYgNi42OTk4OSAyMS44OTg1IDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PasswordBrokenIcon extends StatelessWidget {
  /// Creates the `password` icon in the broken style.
  const PasswordBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 10V14M10.2676 11L13.7317 13M13.7314 11L10.2673 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.73241 10V14M4.99999 11L8.46409 13M8.46386 11L4.99976 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M17.2681 10V14M15.5356 11L18.9997 13M18.9995 11L15.5354 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12C22 15.7712 22 17.6569 20.8284 18.8284C19.6569 20 17.7712 20 14 20H10C6.22876 20 4.34315 20 3.17157 18.8284C2 17.6569 2 15.7712 2 12C2 8.22876 2 6.34315 3.17157 5.17157C4.34315 4 6.22876 4 10 4H14C17.7712 4 19.6569 4 20.8284 5.17157C21.4816 5.82475 21.7706 6.69989 21.8985 8" stroke="currentColor" stroke-linecap="round"/>''',
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
