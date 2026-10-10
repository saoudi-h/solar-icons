// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-arrow-up` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjQ2NDQ3IDIwLjUzNTVDMiAxOS4wNzExIDIgMTYuNzE0IDIgMTJDMiA3LjI4NTk1IDIgNC45Mjg5MyAzLjQ2NDQ3IDMuNDY0NDdDNC45Mjg5MyAyIDcuMjg1OTUgMiAxMiAyQzE2LjcxNCAyIDE5LjA3MTEgMiAyMC41MzU1IDMuNDY0NDdDMjIgNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyQzIyIDE2LjcxNCAyMiAxOS4wNzExIDIwLjUzNTUgMjAuNTM1NUMxOS4wNzExIDIyIDE2LjcxNCAyMiAxMiAyMkM3LjI4NTk1IDIyIDQuOTI4OTMgMjIgMy40NjQ0NyAyMC41MzU1Wk0xMiAxNi43NUMxMi40MTQyIDE2Ljc1IDEyLjc1IDE2LjQxNDIgMTIuNzUgMTZWOS44MTA2NkwxNC40Njk3IDExLjUzMDNDMTQuNzYyNiAxMS44MjMyIDE1LjIzNzQgMTEuODIzMiAxNS41MzAzIDExLjUzMDNDMTUuODIzMiAxMS4yMzc0IDE1LjgyMzIgMTAuNzYyNiAxNS41MzAzIDEwLjQ2OTdMMTIuNTMwMyA3LjQ2OTY3QzEyLjM4OTcgNy4zMjkwMiAxMi4xOTg5IDcuMjUgMTIgNy4yNUMxMS44MDExIDcuMjUgMTEuNjEwMyA3LjMyOTAyIDExLjQ2OTcgNy40Njk2N0w4LjQ2OTY3IDEwLjQ2OTdDOC4xNzY3OCAxMC43NjI2IDguMTc2NzggMTEuMjM3NCA4LjQ2OTY3IDExLjUzMDNDOC43NjI1NiAxMS44MjMyIDkuMjM3NDQgMTEuODIzMiA5LjUzMDMzIDExLjUzMDNMMTEuMjUgOS44MTA2NlYxNkMxMS4yNSAxNi40MTQyIDExLjU4NTggMTYuNzUgMTIgMTYuNzVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class SquareArrowUpBoldIcon extends StatelessWidget {
  /// Creates the `square-arrow-up` icon in the bold style.
  const SquareArrowUpBoldIcon({
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
    name: 'square-arrow-up',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355ZM12 16.75C12.4142 16.75 12.75 16.4142 12.75 16V9.81066L14.4697 11.5303C14.7626 11.8232 15.2374 11.8232 15.5303 11.5303C15.8232 11.2374 15.8232 10.7626 15.5303 10.4697L12.5303 7.46967C12.3897 7.32902 12.1989 7.25 12 7.25C11.8011 7.25 11.6103 7.32902 11.4697 7.46967L8.46967 10.4697C8.17678 10.7626 8.17678 11.2374 8.46967 11.5303C8.76256 11.8232 9.23744 11.8232 9.53033 11.5303L11.25 9.81066V16C11.25 16.4142 11.5858 16.75 12 16.75Z" fill="currentColor"/>''',
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
