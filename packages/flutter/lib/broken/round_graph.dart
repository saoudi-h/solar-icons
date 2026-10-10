// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-graph` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJDMjIgMTMuODIxNCAyMS41MTMgMTUuNTI5MSAyMC42NjIyIDE3TTUgNC44NTg1N0MzLjE0ODY0IDYuNjczNDkgMiA5LjIwMjYxIDIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJDMTMuODIxNCAyMiAxNS41MjkxIDIxLjUxMyAxNyAyMC42NjIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTUgMTJDNSAxMy40ODcyIDUuNDYzODEgMTQuODY2MiA2LjI1NDY5IDE2TTEyIDVDMTUuODY2IDUgMTkgOC4xMzQwMSAxOSAxMkMxOSAxNS44NjYgMTUuODY2IDE5IDEyIDE5QzEwLjkyNjQgMTkgOS45MDkyNiAxOC43NTgzIDkgMTguMzI2NCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAxNkMxNC4yMDkxIDE2IDE2IDE0LjIwOTEgMTYgMTJDMTYgOS43OTA4NiAxNC4yMDkxIDggMTIgOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class RoundGraphBrokenIcon extends StatelessWidget {
  /// Creates the `round-graph` icon in the broken style.
  const RoundGraphBrokenIcon({
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
    name: 'round-graph',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 2C17.5228 2 22 6.47715 22 12C22 13.8214 21.513 15.5291 20.6622 17M5 4.85857C3.14864 6.67349 2 9.20261 2 12C2 17.5228 6.47715 22 12 22C13.8214 22 15.5291 21.513 17 20.6622" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 12C5 13.4872 5.46381 14.8662 6.25469 16M12 5C15.866 5 19 8.13401 19 12C19 15.866 15.866 19 12 19C10.9264 19 9.90926 18.7583 9 18.3264" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 16C14.2091 16 16 14.2091 16 12C16 9.79086 14.2091 8 12 8" stroke="currentColor" stroke-linecap="round"/>''',
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
