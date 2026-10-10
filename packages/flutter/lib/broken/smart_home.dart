// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMi4wMDAxIDEyLjIwMzlWMTMuNzI1QzIyLjAwMDEgMTcuNjI1OCAyMi4wMDAxIDE5LjU3NjMgMjAuODI4NSAyMC43ODgxQzE5LjY1NyAyMiAxNy43NzEzIDIyIDE0LjAwMDEgMjJNMjEuNDgwOSA3LjgyMjc0QzIwLjk2MTcgNi44NzQyMSAyMC4wMTMyIDYuMjg1NTEgMTguMTE2MSA1LjEwODEyTDE2LjExNjEgMy44NjY4N0MxNC4xMTA3IDIuNjIyMjkgMTMuMTA4IDIgMTIuMDAwMSAyQzEwLjg5MjIgMiA5Ljg4OTUgMi42MjIyOSA3Ljg4NDE0IDMuODY2ODdMNS44ODQxNSA1LjEwODEzQzMuOTg3MDYgNi4yODU1MSAzLjAzODUxIDYuODc0MjEgMi41MTkzMSA3LjgyMjc0QzIuMjAxNzQgOC40MDI5MyAyLjA3ODQxIDkuMDU2MzIgMi4wMzA1MiAxMCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMSAyMkMxMSAxNy4wMjk0IDYuOTcwNTYgMTMgMiAxMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDIyQzggMTguNjg2MyA1LjMxMzcxIDE2IDIgMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNSAyMkM1IDIwLjM0MzEgMy42NTY4NSAxOSAyIDE5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SmartHomeBrokenIcon extends StatelessWidget {
  /// Creates the `smart-home` icon in the broken style.
  const SmartHomeBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22.0001 12.2039V13.725C22.0001 17.6258 22.0001 19.5763 20.8285 20.7881C19.657 22 17.7713 22 14.0001 22M21.4809 7.82274C20.9617 6.87421 20.0132 6.28551 18.1161 5.10812L16.1161 3.86687C14.1107 2.62229 13.108 2 12.0001 2C10.8922 2 9.8895 2.62229 7.88414 3.86687L5.88415 5.10813C3.98706 6.28551 3.03851 6.87421 2.51931 7.82274C2.20174 8.40293 2.07841 9.05632 2.03052 10" stroke="currentColor" stroke-linecap="round"/>
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
