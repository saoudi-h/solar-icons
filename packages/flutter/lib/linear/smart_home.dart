// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMy45OTk5IDIyQzE3Ljc3MTEgMjIgMTkuNjU2NyAyMiAyMC44MjgzIDIwLjc4ODFDMjEuOTk5OSAxOS41NzYzIDIxLjk5OTkgMTcuNjI1OCAyMS45OTk5IDEzLjcyNVYxMi4yMDM5QzIxLjk5OTkgOS45MTU0OSAyMS45OTk5IDguNzcxMjggMjEuNDgwNyA3LjgyMjc0QzIwLjk2MTUgNi44NzQyMSAyMC4wMTI5IDYuMjg1NTEgMTguMTE1OCA1LjEwODEyTDE2LjExNTggMy44NjY4N0MxNC4xMTA1IDIuNjIyMjkgMTMuMTA3OCAyIDExLjk5OTkgMkMxMC44OTE5IDIgOS44ODkyNSAyLjYyMjI5IDcuODgzOSAzLjg2Njg3TDUuODgzOSA1LjEwODEzQzMuOTg2ODEgNi4yODU1MSAzLjAzODI3IDYuODc0MjEgMi41MTkwNyA3LjgyMjc0QzIuMjAxNDkgOC40MDI5MyAyLjA3ODE3IDkuMDU2MzIgMi4wMzAyNyAxMCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMSAyMkMxMSAxNy4wMjk0IDYuOTcwNTYgMTMgMiAxMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDIyQzggMTguNjg2MyA1LjMxMzcxIDE2IDIgMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNSAyMkM1IDIwLjM0MzEgMy42NTY4NSAxOSAyIDE5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SmartHomeLinearIcon extends StatelessWidget {
  /// Creates the `smart-home` icon in the linear style.
  const SmartHomeLinearIcon({
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
    name: 'smart-home',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M13.9999 22C17.7711 22 19.6567 22 20.8283 20.7881C21.9999 19.5763 21.9999 17.6258 21.9999 13.725V12.2039C21.9999 9.91549 21.9999 8.77128 21.4807 7.82274C20.9615 6.87421 20.0129 6.28551 18.1158 5.10812L16.1158 3.86687C14.1105 2.62229 13.1078 2 11.9999 2C10.8919 2 9.88925 2.62229 7.8839 3.86687L5.8839 5.10813C3.98681 6.28551 3.03827 6.87421 2.51907 7.82274C2.20149 8.40293 2.07817 9.05632 2.03027 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 22C11 17.0294 6.97056 13 2 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 22C8 18.6863 5.31371 16 2 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 22C5 20.3431 3.65685 19 2 19" stroke="currentColor" stroke-linecap="round"/>''',
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
