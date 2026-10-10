// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-dot` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyQzE2LjcxNCAyIDE5LjA3MDcgMi4wMDAzOCAyMC41MzUyIDMuNDY0ODRDMjEuOTk5NiA0LjkyOTMxIDIyIDcuMjg1OTUgMjIgMTJDMjIgMTYuNzE0IDIxLjk5OTYgMTkuMDcwNyAyMC41MzUyIDIwLjUzNTJDMTkuMDcwNyAyMS45OTk2IDE2LjcxNCAyMiAxMiAyMkM3LjI4NTk1IDIyIDQuOTI5MzEgMjEuOTk5NiAzLjQ2NDg0IDIwLjUzNTJDMi4wMDAzOCAxOS4wNzA3IDIgMTYuNzE0IDIgMTJDMiA3LjI4NTk1IDIuMDAwMzggNC45MjkzMSAzLjQ2NDg0IDMuNDY0ODRDNC45MjkzMSAyLjAwMDM4IDcuMjg1OTUgMiAxMiAyWk0xMiAxMS4yNUMxMS41ODU4IDExLjI1IDExLjI1IDExLjU4NTggMTEuMjUgMTJDMTEuMjUgMTIuNDE0MiAxMS41ODU4IDEyLjc1IDEyIDEyLjc1QzEyLjQxNDIgMTIuNzUgMTIuNzUgMTIuNDE0MiAxMi43NSAxMkMxMi43NSAxMS41ODU4IDEyLjQxNDIgMTEuMjUgMTIgMTEuMjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class SquareDotBoldIcon extends StatelessWidget {
  /// Creates the `square-dot` icon in the bold style.
  const SquareDotBoldIcon({
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
    name: 'square-dot',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C16.714 2 19.0707 2.00038 20.5352 3.46484C21.9996 4.92931 22 7.28595 22 12C22 16.714 21.9996 19.0707 20.5352 20.5352C19.0707 21.9996 16.714 22 12 22C7.28595 22 4.92931 21.9996 3.46484 20.5352C2.00038 19.0707 2 16.714 2 12C2 7.28595 2.00038 4.92931 3.46484 3.46484C4.92931 2.00038 7.28595 2 12 2ZM12 11.25C11.5858 11.25 11.25 11.5858 11.25 12C11.25 12.4142 11.5858 12.75 12 12.75C12.4142 12.75 12.75 12.4142 12.75 12C12.75 11.5858 12.4142 11.25 12 11.25Z" fill="currentColor"/>''',
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
