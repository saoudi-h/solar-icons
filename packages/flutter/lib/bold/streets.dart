// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `streets` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuNDY0NDcgMy40NjQ0N0MyIDQuOTI4OTMgMiA3LjI4NTk2IDIgMTJDMiAxNi4xMzQgMiAxOC40NTUzIDIuOTg3NjcgMTkuOTUxN0wxOS45NTE3IDIuOTg3NjZDMTguNDU1MyAyIDE2LjEzNCAyIDEyIDJDNy4yODU5NSAyIDQuOTI4OTMgMiAzLjQ2NDQ3IDMuNDY0NDdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMS4wMTIzIDQuMDQ4MzNMMTMuMDYwNyAxMkwyMS4wMTIzIDE5Ljk1MTdDMjIgMTguNDU1MyAyMiAxNi4xMzQgMjIgMTJDMjIgNy44NjYgMjIgNS41NDQ2NiAyMS4wMTIzIDQuMDQ4MzNaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMiAxMy4wNjA3TDQuMDQ4MzMgMjEuMDEyM0M1LjU0NDY2IDIyIDcuODY2IDIyIDEyIDIyQzE2LjEzNCAyMiAxOC40NTUzIDIyIDE5Ljk1MTcgMjEuMDEyM0wxMiAxMy4wNjA3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class StreetsBoldIcon extends StatelessWidget {
  /// Creates the `streets` icon in the bold style.
  const StreetsBoldIcon({
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
    name: 'streets',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M3.46447 3.46447C2 4.92893 2 7.28596 2 12C2 16.134 2 18.4553 2.98767 19.9517L19.9517 2.98766C18.4553 2 16.134 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447Z" fill="currentColor"/>
<path d="M21.0123 4.04833L13.0607 12L21.0123 19.9517C22 18.4553 22 16.134 22 12C22 7.866 22 5.54466 21.0123 4.04833Z" fill="currentColor"/>
<path d="M12 13.0607L4.04833 21.0123C5.54466 22 7.866 22 12 22C16.134 22 18.4553 22 19.9517 21.0123L12 13.0607Z" fill="currentColor"/>''',
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
