// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-arrow-right` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyMkMxNy41MjI4IDIyIDIyIDE3LjUyMjggMjIgMTJDMjIgNi40NzcxNSAxNy41MjI4IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJaTTEyLjQ2OTcgOC40Njk2N0MxMi43NjI2IDguMTc2NzggMTMuMjM3NCA4LjE3Njc4IDEzLjUzMDMgOC40Njk2N0wxNi41MzAzIDExLjQ2OTdDMTYuODIzMiAxMS43NjI2IDE2LjgyMzIgMTIuMjM3NCAxNi41MzAzIDEyLjUzMDNMMTMuNTMwMyAxNS41MzAzQzEzLjIzNzQgMTUuODIzMiAxMi43NjI2IDE1LjgyMzIgMTIuNDY5NyAxNS41MzAzQzEyLjE3NjggMTUuMjM3NCAxMi4xNzY4IDE0Ljc2MjYgMTIuNDY5NyAxNC40Njk3TDE0LjE4OTMgMTIuNzVIOEM3LjU4NTc5IDEyLjc1IDcuMjUgMTIuNDE0MiA3LjI1IDEyQzcuMjUgMTEuNTg1OCA3LjU4NTc5IDExLjI1IDggMTEuMjVIMTQuMTg5M0wxMi40Njk3IDkuNTMwMzNDMTIuMTc2OCA5LjIzNzQ0IDEyLjE3NjggOC43NjI1NiAxMi40Njk3IDguNDY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RoundArrowRightBoldIcon extends StatelessWidget {
  /// Creates the `round-arrow-right` icon in the bold style.
  const RoundArrowRightBoldIcon({
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
    name: 'round-arrow-right',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22ZM12.4697 8.46967C12.7626 8.17678 13.2374 8.17678 13.5303 8.46967L16.5303 11.4697C16.8232 11.7626 16.8232 12.2374 16.5303 12.5303L13.5303 15.5303C13.2374 15.8232 12.7626 15.8232 12.4697 15.5303C12.1768 15.2374 12.1768 14.7626 12.4697 14.4697L14.1893 12.75H8C7.58579 12.75 7.25 12.4142 7.25 12C7.25 11.5858 7.58579 11.25 8 11.25H14.1893L12.4697 9.53033C12.1768 9.23744 12.1768 8.76256 12.4697 8.46967Z" fill="currentColor"/>''',
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
