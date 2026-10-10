// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `danger-square` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyQzcuMjg1OTUgMiA0LjkyODkzIDIgMy40NjQ0NyAzLjQ2NDQ3QzIgNC45Mjg5MyAyIDcuMjg1OTUgMiAxMkMyIDE2LjcxNCAyIDE5LjA3MTEgMy40NjQ0NyAyMC41MzU1QzQuOTI4OTMgMjIgNy4yODU5NSAyMiAxMiAyMkMxNi43MTQgMjIgMTkuMDcxMSAyMiAyMC41MzU1IDIwLjUzNTVDMjIgMTkuMDcxMSAyMiAxNi43MTQgMjIgMTJDMjIgNy4yODU5NSAyMiA0LjkyODkzIDIwLjUzNTUgMy40NjQ0N0MxOS4wNzExIDIgMTYuNzE0IDIgMTIgMlpNMTIgNi4yNUMxMi40MTQyIDYuMjUgMTIuNzUgNi41ODU3OSAxMi43NSA3VjEzQzEyLjc1IDEzLjQxNDIgMTIuNDE0MiAxMy43NSAxMiAxMy43NUMxMS41ODU4IDEzLjc1IDExLjI1IDEzLjQxNDIgMTEuMjUgMTNWN0MxMS4yNSA2LjU4NTc5IDExLjU4NTggNi4yNSAxMiA2LjI1Wk0xMiAxN0MxMi41NTIzIDE3IDEzIDE2LjU1MjMgMTMgMTZDMTMgMTUuNDQ3NyAxMi41NTIzIDE1IDEyIDE1QzExLjQ0NzcgMTUgMTEgMTUuNDQ3NyAxMSAxNkMxMSAxNi41NTIzIDExLjQ0NzcgMTcgMTIgMTdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class DangerSquareBoldIcon extends StatelessWidget {
  /// Creates the `danger-square` icon in the bold style.
  const DangerSquareBoldIcon({
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
    name: 'danger-square',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2ZM12 6.25C12.4142 6.25 12.75 6.58579 12.75 7V13C12.75 13.4142 12.4142 13.75 12 13.75C11.5858 13.75 11.25 13.4142 11.25 13V7C11.25 6.58579 11.5858 6.25 12 6.25ZM12 17C12.5523 17 13 16.5523 13 16C13 15.4477 12.5523 15 12 15C11.4477 15 11 15.4477 11 16C11 16.5523 11.4477 17 12 17Z" fill="currentColor"/>''',
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
