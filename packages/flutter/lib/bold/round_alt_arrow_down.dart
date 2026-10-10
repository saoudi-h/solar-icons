// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-alt-arrow-down` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyMkMxNy41MjI4IDIyIDIyIDE3LjUyMjggMjIgMTJDMjIgNi40NzcxNSAxNy41MjI4IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJaTTE1LjUzMDMgOS45Njk2N0MxNS44MjMyIDEwLjI2MjYgMTUuODIzMiAxMC43Mzc0IDE1LjUzMDMgMTEuMDMwM0wxMi41MzAzIDE0LjAzMDNDMTIuMzg5NyAxNC4xNzEgMTIuMTk4OSAxNC4yNSAxMiAxNC4yNUMxMS44MDExIDE0LjI1IDExLjYxMDMgMTQuMTcxIDExLjQ2OTcgMTQuMDMwM0w4LjQ2OTY3IDExLjAzMDNDOC4xNzY3OCAxMC43Mzc0IDguMTc2NzggMTAuMjYyNiA4LjQ2OTY3IDkuOTY5NjdDOC43NjI1NiA5LjY3Njc4IDkuMjM3NDQgOS42NzY3OCA5LjUzMDMzIDkuOTY5NjdMMTIgMTIuNDM5M0wxNC40Njk3IDkuOTY5NjdDMTQuNzYyNiA5LjY3Njc4IDE1LjIzNzQgOS42NzY3OCAxNS41MzAzIDkuOTY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RoundAltArrowDownBoldIcon extends StatelessWidget {
  /// Creates the `round-alt-arrow-down` icon in the bold style.
  const RoundAltArrowDownBoldIcon({
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
    name: 'round-alt-arrow-down',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22ZM15.5303 9.96967C15.8232 10.2626 15.8232 10.7374 15.5303 11.0303L12.5303 14.0303C12.3897 14.171 12.1989 14.25 12 14.25C11.8011 14.25 11.6103 14.171 11.4697 14.0303L8.46967 11.0303C8.17678 10.7374 8.17678 10.2626 8.46967 9.96967C8.76256 9.67678 9.23744 9.67678 9.53033 9.96967L12 12.4393L14.4697 9.96967C14.7626 9.67678 15.2374 9.67678 15.5303 9.96967Z" fill="currentColor"/>''',
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
