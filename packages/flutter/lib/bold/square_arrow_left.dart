// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-arrow-left` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMC41MzU1IDMuNDY0NDdDMTkuMDcxMSAyIDE2LjcxNCAyIDEyIDJDNy4yODU5NSAyIDQuOTI4OTMgMiAzLjQ2NDQ3IDMuNDY0NDdDMiA0LjkyODkzIDIgNy4yODU5NSAyIDEyQzIgMTYuNzE0IDIgMTkuMDcxMSAzLjQ2NDQ3IDIwLjUzNTVDNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyIDIyQzE2LjcxNCAyMiAxOS4wNzExIDIyIDIwLjUzNTUgMjAuNTM1NUMyMiAxOS4wNzExIDIyIDE2LjcxNCAyMiAxMkMyMiA3LjI4NTk1IDIyIDQuOTI4OTMgMjAuNTM1NSAzLjQ2NDQ3Wk0xNi43NSAxMkMxNi43NSAxMi40MTQyIDE2LjQxNDIgMTIuNzUgMTYgMTIuNzVIOS44MTA2NkwxMS41MzAzIDE0LjQ2OTdDMTEuODIzMiAxNC43NjI2IDExLjgyMzIgMTUuMjM3NCAxMS41MzAzIDE1LjUzMDNDMTEuMjM3NCAxNS44MjMyIDEwLjc2MjYgMTUuODIzMiAxMC40Njk3IDE1LjUzMDNMNy40Njk2NyAxMi41MzAzQzcuMzI5MDIgMTIuMzg5NyA3LjI1IDEyLjE5ODkgNy4yNSAxMkM3LjI1IDExLjgwMTEgNy4zMjkwMiAxMS42MTAzIDcuNDY5NjcgMTEuNDY5N0wxMC40Njk3IDguNDY5NjdDMTAuNzYyNiA4LjE3Njc4IDExLjIzNzQgOC4xNzY3OCAxMS41MzAzIDguNDY5NjdDMTEuODIzMiA4Ljc2MjU2IDExLjgyMzIgOS4yMzc0NCAxMS41MzAzIDkuNTMwMzNMOS44MTA2NiAxMS4yNUgxNkMxNi40MTQyIDExLjI1IDE2Ljc1IDExLjU4NTggMTYuNzUgMTJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class SquareArrowLeftBoldIcon extends StatelessWidget {
  /// Creates the `square-arrow-left` icon in the bold style.
  const SquareArrowLeftBoldIcon({
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
    name: 'square-arrow-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447ZM16.75 12C16.75 12.4142 16.4142 12.75 16 12.75H9.81066L11.5303 14.4697C11.8232 14.7626 11.8232 15.2374 11.5303 15.5303C11.2374 15.8232 10.7626 15.8232 10.4697 15.5303L7.46967 12.5303C7.32902 12.3897 7.25 12.1989 7.25 12C7.25 11.8011 7.32902 11.6103 7.46967 11.4697L10.4697 8.46967C10.7626 8.17678 11.2374 8.17678 11.5303 8.46967C11.8232 8.76256 11.8232 9.23744 11.5303 9.53033L9.81066 11.25H16C16.4142 11.25 16.75 11.5858 16.75 12Z" fill="currentColor"/>''',
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
