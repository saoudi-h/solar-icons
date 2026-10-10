// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `clock-square` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyQzE2LjcxNCAyIDE5LjA3MDcgMi4wMDAzOCAyMC41MzUyIDMuNDY0ODRDMjEuOTk5NiA0LjkyOTMxIDIyIDcuMjg1OTUgMjIgMTJDMjIgMTYuNzE0IDIxLjk5OTYgMTkuMDcwNyAyMC41MzUyIDIwLjUzNTJDMTkuMDcwNyAyMS45OTk2IDE2LjcxNCAyMiAxMiAyMkM3LjI4NTk1IDIyIDQuOTI5MzEgMjEuOTk5NiAzLjQ2NDg0IDIwLjUzNTJDMi4wMDAzOCAxOS4wNzA3IDIgMTYuNzE0IDIgMTJDMiA3LjI4NTk1IDIuMDAwMzggNC45MjkzMSAzLjQ2NDg0IDMuNDY0ODRDNC45MjkzMSAyLjAwMDM4IDcuMjg1OTUgMiAxMiAyWk0xMiA3LjI1QzExLjU4NTggNy4yNSAxMS4yNSA3LjU4NTc5IDExLjI1IDhWMTJDMTEuMjUgMTIuMTk4OSAxMS4zMjkxIDEyLjM4OTYgMTEuNDY5NyAxMi41MzAzTDEzLjk2OTcgMTUuMDMwM0MxNC4yNjI2IDE1LjMyMzIgMTQuNzM3NCAxNS4zMjMyIDE1LjAzMDMgMTUuMDMwM0MxNS4zMjMyIDE0LjczNzQgMTUuMzIzMiAxNC4yNjI2IDE1LjAzMDMgMTMuOTY5N0wxMi43NSAxMS42ODk1VjhDMTIuNzUgNy41ODU3OSAxMi40MTQyIDcuMjUgMTIgNy4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ClockSquareBoldIcon extends StatelessWidget {
  /// Creates the `clock-square` icon in the bold style.
  const ClockSquareBoldIcon({
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
    name: 'clock-square',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C16.714 2 19.0707 2.00038 20.5352 3.46484C21.9996 4.92931 22 7.28595 22 12C22 16.714 21.9996 19.0707 20.5352 20.5352C19.0707 21.9996 16.714 22 12 22C7.28595 22 4.92931 21.9996 3.46484 20.5352C2.00038 19.0707 2 16.714 2 12C2 7.28595 2.00038 4.92931 3.46484 3.46484C4.92931 2.00038 7.28595 2 12 2ZM12 7.25C11.5858 7.25 11.25 7.58579 11.25 8V12C11.25 12.1989 11.3291 12.3896 11.4697 12.5303L13.9697 15.0303C14.2626 15.3232 14.7374 15.3232 15.0303 15.0303C15.3232 14.7374 15.3232 14.2626 15.0303 13.9697L12.75 11.6895V8C12.75 7.58579 12.4142 7.25 12 7.25Z" fill="currentColor"/>''',
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
