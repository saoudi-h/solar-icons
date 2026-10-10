// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `colour-tuning` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiAxMkg5LjVNMjIgMTJIMTQuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMC4wMDAyIDE1LjY4NDNDMjAuMDAwMiAxOSAxNy43MzQ1IDIyIDE2LjAwMDIgMjJDMTMuNzMxNSAyMiAxMi4wNzIzIDE4Ljg0MjEgMTIuMDcyMyAxMkMxMi4wNzIzIDUuMTU3OTQgMTAuNDEyOCAxLjk5OTg4IDguMTQ0MDQgMS45OTk4OEM2LjQwOTc4IDEuOTk5ODggNC4xNDQwNCA0Ljk5OTg4IDQuMTQ0MDQgOC4zMTU2NyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ColourTuningLineDuotoneIcon extends StatelessWidget {
  /// Creates the `colour-tuning` icon in the lineDuotone style.
  const ColourTuningLineDuotoneIcon({
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
    name: 'colour-tuning',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M20.0002 15.6843C20.0002 19 17.7345 22 16.0002 22C13.7315 22 12.0723 18.8421 12.0723 12C12.0723 5.15794 10.4128 1.99988 8.14404 1.99988C6.40978 1.99988 4.14404 4.99988 4.14404 8.31567" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12H9.5M22 12H14.5" stroke="currentColor" stroke-linecap="round"/>''',
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
