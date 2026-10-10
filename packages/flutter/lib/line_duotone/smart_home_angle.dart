// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `smart-home-angle` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMi4wMTEwOCAxMEMxLjk2NzM2IDkuMTI1NDQgMi4wNDg1MiA4LjQ3MzI3IDIuMzM1MzcgNy44NzQ5NUMyLjg3NTgzIDYuNzQ3NiA0LjAyNjE5IDYuMDYyMzQgNi4zMjY5MSA0LjY5MTgxTDcuNzExNzUgMy44NjY4N0M5LjgwMTA0IDIuNjIyMjkgMTAuODQ1NyAyIDEyIDJDMTMuMTU0MyAyIDE0LjE5OSAyLjYyMjI5IDE2LjI4ODIgMy44NjY4N0wxNy42NzMxIDQuNjkxODFDMTkuOTczOCA2LjA2MjMzIDIxLjEyNDIgNi43NDc2IDIxLjY2NDYgNy44NzQ5NUMyMi4yMDUxIDkuMDAyMjkgMjIuMDE1NCAxMC4zMjA4IDIxLjYzNTkgMTIuOTU3OUwyMS4zNTcyIDE0Ljg5NTJDMjAuODY5NyAxOC4yODI3IDIwLjYyNiAxOS45NzY0IDE5LjQ1MSAyMC45ODgyQzE4LjM4MjIgMjEuOTA4NSAxNi44NTk5IDIxLjk5MTcgMTQgMjEuOTk5MyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMSAyMkMxMSAxNy4wMjk0IDYuOTcwNTYgMTMgMiAxMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDIyQzggMTguNjg2MyA1LjMxMzcxIDE2IDIgMTYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNSAyMkM1IDIwLjM0MzEgMy42NTY4NSAxOSAyIDE5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SmartHomeAngleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `smart-home-angle` icon in the lineDuotone style.
  const SmartHomeAngleLineDuotoneIcon({
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
    name: 'smart-home-angle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11 22C11 17.0294 6.97056 13 2 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 22C8 18.6863 5.31371 16 2 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 22C5 20.3431 3.65685 19 2 19" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2.01108 10C1.96736 9.12544 2.04852 8.47327 2.33537 7.87495C2.87583 6.7476 4.02619 6.06234 6.32691 4.69181L7.71175 3.86687C9.80104 2.62229 10.8457 2 12 2C13.1543 2 14.199 2.62229 16.2882 3.86687L17.6731 4.69181C19.9738 6.06233 21.1242 6.7476 21.6646 7.87495C22.2051 9.00229 22.0154 10.3208 21.6359 12.9579L21.3572 14.8952C20.8697 18.2827 20.626 19.9764 19.451 20.9882C18.3822 21.9085 16.8599 21.9917 14 21.9993" stroke="currentColor" stroke-linecap="round"/>''',
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
