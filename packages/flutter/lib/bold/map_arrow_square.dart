// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-arrow-square` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0zLjQ2NDQ3IDIwLjUzNTVDNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyIDIyQzE2LjcxNCAyMiAxOS4wNzExIDIyIDIwLjUzNTUgMjAuNTM1NUMyMiAxOS4wNzExIDIyIDE2LjcxNCAyMiAxMkMyMiA3LjI4NTk1IDIyIDQuOTI4OTMgMjAuNTM1NSAzLjQ2NDQ3QzE5LjA3MTEgMiAxNi43MTQgMiAxMiAyQzcuMjg1OTUgMiA0LjkyODkzIDIgMy40NjQ0NyAzLjQ2NDQ3QzIgNC45Mjg5MyAyIDcuMjg1OTUgMiAxMkMyIDE2LjcxNCAyIDE5LjA3MTEgMy40NjQ0NyAyMC41MzU1Wk0xNi45MzQ4IDguMTk1OThMMTMuNDIyNyAxNy4zNjE4QzEzLjEwNDUgMTguMTkyMiAxMS45NCAxOC4yMTkyIDExLjY5MTcgMTcuNDAxOUwxMC42MzUyIDEzLjkyNDlDMTAuNTUzIDEzLjY1NDUgMTAuMzQ1NSAxMy40NDcgMTAuMDc1MSAxMy4zNjQ4TDYuNTk4MSAxMi4zMDgzQzUuNzgwNzkgMTIuMDYgNS44MDc3OSAxMC44OTU1IDYuNjM4MjQgMTAuNTc3M0wxNS44MDQgNy4wNjUyMUMxNi41Mzg5IDYuNzgzNjEgMTcuMjE2NCA3LjQ2MTA3IDE2LjkzNDggOC4xOTU5OFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MapArrowSquareBoldIcon extends StatelessWidget {
  /// Creates the `map-arrow-square` icon in the bold style.
  const MapArrowSquareBoldIcon({
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
    name: 'map-arrow-square',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355ZM16.9348 8.19598L13.4227 17.3618C13.1045 18.1922 11.94 18.2192 11.6917 17.4019L10.6352 13.9249C10.553 13.6545 10.3455 13.447 10.0751 13.3648L6.5981 12.3083C5.78079 12.06 5.80779 10.8955 6.63824 10.5773L15.804 7.06521C16.5389 6.78361 17.2164 7.46107 16.9348 8.19598Z" fill="currentColor"/>''',
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
