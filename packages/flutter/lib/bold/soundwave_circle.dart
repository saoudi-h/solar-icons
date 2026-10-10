// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJaTTEyLjc1IDdDMTIuNzUgNi41ODU3OSAxMi40MTQyIDYuMjUgMTIgNi4yNUMxMS41ODU4IDYuMjUgMTEuMjUgNi41ODU3OSAxMS4yNSA3VjE3QzExLjI1IDE3LjQxNDIgMTEuNTg1OCAxNy43NSAxMiAxNy43NUMxMi40MTQyIDE3Ljc1IDEyLjc1IDE3LjQxNDIgMTIuNzUgMTdWN1pNNy43NSA5QzcuNzUgOC41ODU3OSA3LjQxNDIxIDguMjUgNyA4LjI1QzYuNTg1NzkgOC4yNSA2LjI1IDguNTg1NzkgNi4yNSA5VjE1QzYuMjUgMTUuNDE0MiA2LjU4NTc5IDE1Ljc1IDcgMTUuNzVDNy40MTQyMSAxNS43NSA3Ljc1IDE1LjQxNDIgNy43NSAxNVY5Wk0xNy43NSAxMEMxNy43NSA5LjU4NTc5IDE3LjQxNDIgOS4yNSAxNyA5LjI1QzE2LjU4NTggOS4yNSAxNi4yNSA5LjU4NTc5IDE2LjI1IDEwVjE0QzE2LjI1IDE0LjQxNDIgMTYuNTg1OCAxNC43NSAxNyAxNC43NUMxNy40MTQyIDE0Ljc1IDE3Ljc1IDE0LjQxNDIgMTcuNzUgMTRWMTBaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class SoundwaveCircleBoldIcon extends StatelessWidget {
  /// Creates the `soundwave-circle` icon in the bold style.
  const SoundwaveCircleBoldIcon({
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
    name: 'soundwave-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2ZM12.75 7C12.75 6.58579 12.4142 6.25 12 6.25C11.5858 6.25 11.25 6.58579 11.25 7V17C11.25 17.4142 11.5858 17.75 12 17.75C12.4142 17.75 12.75 17.4142 12.75 17V7ZM7.75 9C7.75 8.58579 7.41421 8.25 7 8.25C6.58579 8.25 6.25 8.58579 6.25 9V15C6.25 15.4142 6.58579 15.75 7 15.75C7.41421 15.75 7.75 15.4142 7.75 15V9ZM17.75 10C17.75 9.58579 17.4142 9.25 17 9.25C16.5858 9.25 16.25 9.58579 16.25 10V14C16.25 14.4142 16.5858 14.75 17 14.75C17.4142 14.75 17.75 14.4142 17.75 14V10Z" fill="currentColor"/>''',
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
