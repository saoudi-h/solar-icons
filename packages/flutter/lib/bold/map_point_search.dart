// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-point-search` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyQzcuNTgxNzIgMiA0IDUuNjQ1ODggNCAxMC4xNDMzQzQgMTQuNjA1NSA2LjU1MzMyIDE5LjgxMjQgMTAuNTM3MSAyMS42NzQ0QzExLjQ2NTcgMjIuMTA4NSAxMi41MzQzIDIyLjEwODUgMTMuNDYyOSAyMS42NzQ0QzE3LjQ0NjcgMTkuODEyNCAyMCAxNC42MDU1IDIwIDEwLjE0MzNDMjAgNS42NDU4OCAxNi40MTgzIDIgMTIgMlpNOC4yNSAxMEM4LjI1IDcuOTI4OTMgOS45Mjg5MyA2LjI1IDEyIDYuMjVDMTQuMDcxMSA2LjI1IDE1Ljc1IDcuOTI4OTMgMTUuNzUgMTBDMTUuNzUgMTAuNzYyOCAxNS41MjE3IDExLjQ3MzEgMTUuMTMwNCAxMi4wNjUzTDE2LjAzMTcgMTIuOTcxNUMxNi4zMjM4IDEzLjI2NTIgMTYuMzIyNSAxMy43NDAxIDE2LjAyODggMTQuMDMyMkMxNS43MzUxIDE0LjMyNDMgMTUuMjYwMiAxNC4zMjMgMTQuOTY4MSAxNC4wMjkzTDE0LjA3MDYgMTMuMTI2OEMxMy40Nzc0IDEzLjUyMDMgMTIuNzY1MSAxMy43NSAxMiAxMy43NUM5LjkyODkzIDEzLjc1IDguMjUgMTIuMDcxMSA4LjI1IDEwWk05Ljc1IDEwQzkuNzUgOC43NTczNiAxMC43NTc0IDcuNzUgMTIgNy43NUMxMy4yNDI2IDcuNzUgMTQuMjUgOC43NTczNiAxNC4yNSAxMEMxNC4yNSAxMC42MjAyIDE0LjAwMDEgMTEuMTgwNiAxMy41OTM3IDExLjU4ODNDMTMuMTg1NCAxMS45OTc5IDEyLjYyMjkgMTIuMjUgMTIgMTIuMjVDMTAuNzU3NCAxMi4yNSA5Ljc1IDExLjI0MjYgOS43NSAxMFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MapPointSearchBoldIcon extends StatelessWidget {
  /// Creates the `map-point-search` icon in the bold style.
  const MapPointSearchBoldIcon({
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
    name: 'map-point-search',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C7.58172 2 4 5.64588 4 10.1433C4 14.6055 6.55332 19.8124 10.5371 21.6744C11.4657 22.1085 12.5343 22.1085 13.4629 21.6744C17.4467 19.8124 20 14.6055 20 10.1433C20 5.64588 16.4183 2 12 2ZM8.25 10C8.25 7.92893 9.92893 6.25 12 6.25C14.0711 6.25 15.75 7.92893 15.75 10C15.75 10.7628 15.5217 11.4731 15.1304 12.0653L16.0317 12.9715C16.3238 13.2652 16.3225 13.7401 16.0288 14.0322C15.7351 14.3243 15.2602 14.323 14.9681 14.0293L14.0706 13.1268C13.4774 13.5203 12.7651 13.75 12 13.75C9.92893 13.75 8.25 12.0711 8.25 10ZM9.75 10C9.75 8.75736 10.7574 7.75 12 7.75C13.2426 7.75 14.25 8.75736 14.25 10C14.25 10.6202 14.0001 11.1806 13.5937 11.5883C13.1854 11.9979 12.6229 12.25 12 12.25C10.7574 12.25 9.75 11.2426 9.75 10Z" fill="currentColor"/>''',
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
