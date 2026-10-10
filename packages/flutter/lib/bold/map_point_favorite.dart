// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-point-favorite` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyQzcuNTgxNzIgMiA0IDUuNjQ1ODggNCAxMC4xNDMzQzQgMTQuNjA1NSA2LjU1MzMyIDE5LjgxMjQgMTAuNTM3MSAyMS42NzQ0QzExLjQ2NTcgMjIuMTA4NSAxMi41MzQzIDIyLjEwODUgMTMuNDYyOSAyMS42NzQ0QzE3LjQ0NjcgMTkuODEyNCAyMCAxNC42MDU1IDIwIDEwLjE0MzNDMjAgNS42NDU4OCAxNi40MTgzIDIgMTIgMlpNOSA4Ljc1NzM0QzkgOS43NzY5MyAxMC4xNjQ5IDEwLjg1NDMgMTEuMDQyOSAxMS41MjE1QzExLjQ2MjYgMTEuODQwNSAxMS42NzI1IDEyIDEyIDEyQzEyLjMyNzUgMTIgMTIuNTM3NCAxMS44NDA1IDEyLjk1NzEgMTEuNTIxNUMxMy44MzUxIDEwLjg1NDMgMTUgOS43NzY5NCAxNSA4Ljc1NzMzQzE1IDcuMDI0MzMgMTMuMzUgNi4zNzczMiAxMiA3LjcxNjA0QzEwLjY1IDYuMzc3MzIgOSA3LjAyNDMzIDkgOC43NTczNFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MapPointFavoriteBoldIcon extends StatelessWidget {
  /// Creates the `map-point-favorite` icon in the bold style.
  const MapPointFavoriteBoldIcon({
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
    name: 'map-point-favorite',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C7.58172 2 4 5.64588 4 10.1433C4 14.6055 6.55332 19.8124 10.5371 21.6744C11.4657 22.1085 12.5343 22.1085 13.4629 21.6744C17.4467 19.8124 20 14.6055 20 10.1433C20 5.64588 16.4183 2 12 2ZM9 8.75734C9 9.77693 10.1649 10.8543 11.0429 11.5215C11.4626 11.8405 11.6725 12 12 12C12.3275 12 12.5374 11.8405 12.9571 11.5215C13.8351 10.8543 15 9.77694 15 8.75733C15 7.02433 13.35 6.37732 12 7.71604C10.65 6.37732 9 7.02433 9 8.75734Z" fill="currentColor"/>''',
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
