// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `plug-circle` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMTUuMTA4MlYyMC4xNDk4QzEyIDIxLjI2MzUgMTEuMDk1NSAyMi4xODc1IDEwLjAxMjggMjEuOTY3M0M1LjQ0MTkzIDIxLjAzODEgMiAxNi45NjU5IDIgMTIuMDgzMkMyIDYuNTE0NDEgNi40NzcxNSAyIDEyIDJDMTcuNTIyOCAyIDIyIDYuNTE0NDEgMjIgMTIuMDgzMkMyMiAxNi4wNzQzIDE5LjcwMDMgMTkuNTIzOSAxNi4zNjQxIDIxLjE1ODEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSAxMS44QzkgMTEuMzU4MiA5LjM1ODE3IDExIDkuOCAxMUgxNC4yQzE0LjY0MTggMTEgMTUgMTEuMzU4MiAxNSAxMS44VjEyQzE1IDEzLjY1NjkgMTMuNjU2OSAxNSAxMiAxNUMxMC4zNDMxIDE1IDkgMTMuNjU2OSA5IDEyVjExLjhaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTEzLjUgMTFWOSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMC41IDExVjkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PlugCircleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `plug-circle` icon in the lineDuotone style.
  const PlugCircleLineDuotoneIcon({
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
    name: 'plug-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9 11.8C9 11.3582 9.35817 11 9.8 11H14.2C14.6418 11 15 11.3582 15 11.8V12C15 13.6569 13.6569 15 12 15C10.3431 15 9 13.6569 9 12V11.8Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M13.5 11V9" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 11V9" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 15.1082V20.1498C12 21.2635 11.0955 22.1875 10.0128 21.9673C5.44193 21.0381 2 16.9659 2 12.0832C2 6.51441 6.47715 2 12 2C17.5228 2 22 6.51441 22 12.0832C22 16.0743 19.7003 19.5239 16.3641 21.1581" stroke="currentColor" stroke-linecap="round"/>''',
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
