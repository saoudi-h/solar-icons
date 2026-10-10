// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-point-remove` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTAuNTM3MSAyMS42NzQ0QzExLjQ2NTcgMjIuMTA4NSAxMi41MzQzIDIyLjEwODUgMTMuNDYyOSAyMS42NzQ0QzE3LjQ0NjcgMTkuODEyNCAyMCAxNC42MDU1IDIwIDEwLjE0MzNDMjAgNS42NDU4OCAxNi40MTgzIDIgMTIgMkM3LjU4MTcyIDIgNCA1LjY0NTg4IDQgMTAuMTQzM0M0IDE0LjYwNTUgNi41NTMzMiAxOS44MTI0IDEwLjUzNzEgMjEuNjc0NFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTkgOS4yNUM4LjU4NTc5IDkuMjUgOC4yNSA5LjU4NTc5IDguMjUgMTBDOC4yNSAxMC40MTQyIDguNTg1NzkgMTAuNzUgOSAxMC43NUgxNUMxNS40MTQyIDEwLjc1IDE1Ljc1IDEwLjQxNDIgMTUuNzUgMTBDMTUuNzUgOS41ODU3OSAxNS40MTQyIDkuMjUgMTUgOS4yNUg5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MapPointRemoveBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `map-point-remove` icon in the boldDuotone style.
  const MapPointRemoveBoldDuotoneIcon({
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
    name: 'map-point-remove',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9 9.25C8.58579 9.25 8.25 9.58579 8.25 10C8.25 10.4142 8.58579 10.75 9 10.75H15C15.4142 10.75 15.75 10.4142 15.75 10C15.75 9.58579 15.4142 9.25 15 9.25H9Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M10.5371 21.6744C11.4657 22.1085 12.5343 22.1085 13.4629 21.6744C17.4467 19.8124 20 14.6055 20 10.1433C20 5.64588 16.4183 2 12 2C7.58172 2 4 5.64588 4 10.1433C4 14.6055 6.55332 19.8124 10.5371 21.6744Z" fill="currentColor"/>''',
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
