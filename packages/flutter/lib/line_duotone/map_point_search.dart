// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `map-point-search` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNCAxMC4xNDMzQzQgNS42NDU4OCA3LjU4MTcyIDIgMTIgMkMxNi40MTgzIDIgMjAgNS42NDU4OCAyMCAxMC4xNDMzQzIwIDE0LjYwNTUgMTcuNDQ2NyAxOS44MTI0IDEzLjQ2MjkgMjEuNjc0NEMxMi41MzQzIDIyLjEwODUgMTEuNDY1NyAyMi4xMDg1IDEwLjUzNzEgMjEuNjc0NEM2LjU1MzMyIDE5LjgxMjQgNCAxNC42MDU1IDQgMTAuMTQzM1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTQuMTI0OSAxMi4xMTc4TDE1LjUgMTMuNU0xNC4xMjQ5IDEyLjExNzhDMTQuNjY1NyAxMS41NzUyIDE1IDEwLjgyNjYgMTUgMTBDMTUgOC4zNDMxNSAxMy42NTY5IDcgMTIgN0MxMC4zNDMxIDcgOSA4LjM0MzE1IDkgMTBDOSAxMS42NTY5IDEwLjM0MzEgMTMgMTIgMTNDMTIuODMwMiAxMyAxMy41ODE3IDEyLjY2MjggMTQuMTI0OSAxMi4xMTc4WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class MapPointSearchLineDuotoneIcon extends StatelessWidget {
  /// Creates the `map-point-search` icon in the lineDuotone style.
  const MapPointSearchLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14.1249 12.1178L15.5 13.5M14.1249 12.1178C14.6657 11.5752 15 10.8266 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13C12.8302 13 13.5817 12.6628 14.1249 12.1178Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M4 10.1433C4 5.64588 7.58172 2 12 2C16.4183 2 20 5.64588 20 10.1433C20 14.6055 17.4467 19.8124 13.4629 21.6744C12.5343 22.1085 11.4657 22.1085 10.5371 21.6744C6.55332 19.8124 4 14.6055 4 10.1433Z" stroke="currentColor" stroke-linecap="round"/>''',
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
