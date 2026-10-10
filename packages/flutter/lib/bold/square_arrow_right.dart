// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-arrow-right` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjQ2NDQ3IDIwLjUzNTVDNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyIDIyQzE2LjcxNCAyMiAxOS4wNzExIDIyIDIwLjUzNTUgMjAuNTM1NUMyMiAxOS4wNzExIDIyIDE2LjcxNCAyMiAxMkMyMiA3LjI4NTk1IDIyIDQuOTI4OTMgMjAuNTM1NSAzLjQ2NDQ3QzE5LjA3MTEgMiAxNi43MTQgMiAxMiAyQzcuMjg1OTUgMiA0LjkyODkzIDIgMy40NjQ0NyAzLjQ2NDQ3QzIgNC45Mjg5MyAyIDcuMjg1OTUgMiAxMkMyIDE2LjcxNCAyIDE5LjA3MTEgMy40NjQ0NyAyMC41MzU1Wk03LjI1IDEyQzcuMjUgMTEuNTg1OCA3LjU4NTc5IDExLjI1IDggMTEuMjVIMTQuMTg5M0wxMi40Njk3IDkuNTMwMzNDMTIuMTc2OCA5LjIzNzQ0IDEyLjE3NjggOC43NjI1NiAxMi40Njk3IDguNDY5NjdDMTIuNzYyNiA4LjE3Njc4IDEzLjIzNzQgOC4xNzY3OCAxMy41MzAzIDguNDY5NjdMMTYuNTMwMyAxMS40Njk3QzE2LjY3MSAxMS42MTAzIDE2Ljc1IDExLjgwMTEgMTYuNzUgMTJDMTYuNzUgMTIuMTk4OSAxNi42NzEgMTIuMzg5NyAxNi41MzAzIDEyLjUzMDNMMTMuNTMwMyAxNS41MzAzQzEzLjIzNzQgMTUuODIzMiAxMi43NjI2IDE1LjgyMzIgMTIuNDY5NyAxNS41MzAzQzEyLjE3NjggMTUuMjM3NCAxMi4xNzY4IDE0Ljc2MjYgMTIuNDY5NyAxNC40Njk3TDE0LjE4OTMgMTIuNzVIOEM3LjU4NTc5IDEyLjc1IDcuMjUgMTIuNDE0MiA3LjI1IDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class SquareArrowRightBoldIcon extends StatelessWidget {
  /// Creates the `square-arrow-right` icon in the bold style.
  const SquareArrowRightBoldIcon({
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
    name: 'square-arrow-right',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355ZM7.25 12C7.25 11.5858 7.58579 11.25 8 11.25H14.1893L12.4697 9.53033C12.1768 9.23744 12.1768 8.76256 12.4697 8.46967C12.7626 8.17678 13.2374 8.17678 13.5303 8.46967L16.5303 11.4697C16.671 11.6103 16.75 11.8011 16.75 12C16.75 12.1989 16.671 12.3897 16.5303 12.5303L13.5303 15.5303C13.2374 15.8232 12.7626 15.8232 12.4697 15.5303C12.1768 15.2374 12.1768 14.7626 12.4697 14.4697L14.1893 12.75H8C7.58579 12.75 7.25 12.4142 7.25 12Z" fill="currentColor"/>''',
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
