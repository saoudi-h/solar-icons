// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `stopwatch` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik05LjI1IDJDOS4yNSAxLjU4NTc5IDkuNTg1NzkgMS4yNSAxMCAxLjI1SDE0QzE0LjQxNDIgMS4yNSAxNC43NSAxLjU4NTc5IDE0Ljc1IDJDMTQuNzUgMi40MTQyMSAxNC40MTQyIDIuNzUgMTQgMi43NUgxMEM5LjU4NTc5IDIuNzUgOS4yNSAyLjQxNDIxIDkuMjUgMlpNMTIgNC43NUM3LjQ0MzY1IDQuNzUgMy43NSA4LjQ0MzY1IDMuNzUgMTNDMy43NSAxNy41NTY0IDcuNDQzNjUgMjEuMjUgMTIgMjEuMjVDMTYuNTU2MyAyMS4yNSAyMC4yNSAxNy41NTY0IDIwLjI1IDEzQzIwLjI1IDguNDQzNjUgMTYuNTU2MyA0Ljc1IDEyIDQuNzVaTTIuMjUgMTNDMi4yNSA3LjYxNTIyIDYuNjE1MjIgMy4yNSAxMiAzLjI1QzE3LjM4NDggMy4yNSAyMS43NSA3LjYxNTIyIDIxLjc1IDEzQzIxLjc1IDE4LjM4NDggMTcuMzg0OCAyMi43NSAxMiAyMi43NUM2LjYxNTIyIDIyLjc1IDIuMjUgMTguMzg0OCAyLjI1IDEzWk0xMiA4LjI1QzEyLjQxNDIgOC4yNSAxMi43NSA4LjU4NTc5IDEyLjc1IDlWMTNDMTIuNzUgMTMuNDE0MiAxMi40MTQyIDEzLjc1IDEyIDEzLjc1QzExLjU4NTggMTMuNzUgMTEuMjUgMTMuNDE0MiAxMS4yNSAxM1Y5QzExLjI1IDguNTg1NzkgMTEuNTg1OCA4LjI1IDEyIDguMjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class StopwatchOutlineIcon extends StatelessWidget {
  /// Creates the `stopwatch` icon in the outline style.
  const StopwatchOutlineIcon({
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
    name: 'stopwatch',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.25 2C9.25 1.58579 9.58579 1.25 10 1.25H14C14.4142 1.25 14.75 1.58579 14.75 2C14.75 2.41421 14.4142 2.75 14 2.75H10C9.58579 2.75 9.25 2.41421 9.25 2ZM12 4.75C7.44365 4.75 3.75 8.44365 3.75 13C3.75 17.5564 7.44365 21.25 12 21.25C16.5563 21.25 20.25 17.5564 20.25 13C20.25 8.44365 16.5563 4.75 12 4.75ZM2.25 13C2.25 7.61522 6.61522 3.25 12 3.25C17.3848 3.25 21.75 7.61522 21.75 13C21.75 18.3848 17.3848 22.75 12 22.75C6.61522 22.75 2.25 18.3848 2.25 13ZM12 8.25C12.4142 8.25 12.75 8.58579 12.75 9V13C12.75 13.4142 12.4142 13.75 12 13.75C11.5858 13.75 11.25 13.4142 11.25 13V9C11.25 8.58579 11.5858 8.25 12 8.25Z" fill="currentColor"/>''',
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
