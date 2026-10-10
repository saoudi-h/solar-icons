// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `user-block` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTIiIGN5PSI2IiByPSI0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIwLjgyODQgMTMuMTcxNUMyMC4xMDQ1IDEyLjQ0NzcgMTkuMTA0NiAxMiAxOCAxMkMxNS43OTA5IDEyIDE0IDEzLjc5MDkgMTQgMTZDMTQgMTcuMTA0NiAxNC40NDc3IDE4LjEwNDUgMTUuMTcxNSAxOC44Mjg0QzE1Ljg5NTQgMTkuNTUyMyAxNi44OTU0IDIwIDE4IDIwQzIwLjIwOTEgMjAgMjIgMTguMjA5MSAyMiAxNkMyMiAxNC44OTU0IDIxLjU1MjMgMTMuODk1NCAyMC44Mjg0IDEzLjE3MTVaTTE1LjE3MTUgMTguODI4NEwyMC44Mjg0IDEzLjE3MTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUuMDIgMTMuMzMxN0MxNC4wODgyIDEzLjExNzggMTMuMDY4NSAxMyAxMiAxM0M3LjU4MTcyIDEzIDQgMTUuMDE0NyA0IDE3LjVDNCAxOS45ODUzIDQgMjIgMTIgMjJDMTcuNTc5NCAyMiAxOS4yNjc2IDIxLjAyIDE5Ljc3ODQgMTkuNTgzOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class UserBlockLinearIcon extends StatelessWidget {
  /// Creates the `user-block` icon in the linear style.
  const UserBlockLinearIcon({
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
    name: 'user-block',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.8284 13.1715C20.1045 12.4477 19.1046 12 18 12C15.7909 12 14 13.7909 14 16C14 17.1046 14.4477 18.1045 15.1715 18.8284C15.8954 19.5523 16.8954 20 18 20C20.2091 20 22 18.2091 22 16C22 14.8954 21.5523 13.8954 20.8284 13.1715ZM15.1715 18.8284L20.8284 13.1715" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15.02 13.3317C14.0882 13.1178 13.0685 13 12 13C7.58172 13 4 15.0147 4 17.5C4 19.9853 4 22 12 22C17.5794 22 19.2676 21.02 19.7784 19.5839" stroke="currentColor" stroke-linecap="round"/>''',
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
