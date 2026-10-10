// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMSAyMUgxMEM2LjIyODc2IDIxIDQuMzQzMTUgMjEgMy4xNzE1NyAxOS44Mjg0QzIgMTguNjU2OSAyIDE2Ljc3MTIgMiAxM1YxMUMyIDcuMjI4NzYgMiA1LjM0MzE1IDMuMTcxNTcgNC4xNzE1N0M0LjM0MzE1IDMgNi4yMjg3NiAzIDEwIDNIMTRDMTcuNzcxMiAzIDE5LjY1NjkgMyAyMC44Mjg0IDQuMTcxNTdDMjIgNS4zNDMxNSAyMiA3LjIyODc2IDIyIDExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEzIDE3QzEzIDE1LjExNDQgMTMgMTQuMTcxNiAxMy41ODU4IDEzLjU4NThDMTQuMTcxNiAxMyAxNS4xMTQ0IDEzIDE3IDEzSDE4QzE5Ljg4NTYgMTMgMjAuODI4NCAxMyAyMS40MTQyIDEzLjU4NThDMjIgMTQuMTcxNiAyMiAxNS4xMTQ0IDIyIDE3QzIyIDE4Ljg4NTYgMjIgMTkuODI4NCAyMS40MTQyIDIwLjQxNDJDMjAuODI4NCAyMSAxOS44ODU2IDIxIDE4IDIxSDE3QzE1LjExNDQgMjEgMTQuMTcxNiAyMSAxMy41ODU4IDIwLjQxNDJDMTMgMTkuODI4NCAxMyAxOC44ODU2IDEzIDE3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04LjUgMTEuNUgxMS41VjguNU0xMS41IDExLjVMNy41IDcuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class ToPipLinearIcon extends StatelessWidget {
  /// Creates the `to-pip` icon in the linear style.
  const ToPipLinearIcon({
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
    name: 'to-pip',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M11 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 17C13 15.1144 13 14.1716 13.5858 13.5858C14.1716 13 15.1144 13 17 13H18C19.8856 13 20.8284 13 21.4142 13.5858C22 14.1716 22 15.1144 22 17C22 18.8856 22 19.8284 21.4142 20.4142C20.8284 21 19.8856 21 18 21H17C15.1144 21 14.1716 21 13.5858 20.4142C13 19.8284 13 18.8856 13 17Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 11.5H11.5V8.5M11.5 11.5L7.5 7.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
