// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `heart-angle` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTIgOS4xMzcxQzIgMTMuNTQyMiA1LjI5ODE5IDE2LjA4MzMgOC4xMDYyNyAxOC4yNDY4QzguMzk4MTQgMTguNDcxNyA4LjY4NDcxIDE4LjY5MjUgOC45NjE3MyAxOC45MTA5QzEwIDE5LjcyOTQgMTEgMjAuNSAxMiAyMC41VjUuNTAwNjNDNy41MDAxNiAwLjgyNTQ2NCAyIDQuMjc0MTYgMiA5LjEzNzFaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNCA3LjQ5OTI4TDEyIDUuNTAwNjNWMjAuNUMxMyAyMC41IDE0IDE5LjcyOTQgMTUuMDM4MyAxOC45MTA5QzE1LjMxNTMgMTguNjkyNSAxNS42MDE5IDE4LjQ3MTcgMTUuODkzNyAxOC4yNDY4QzE4LjcwMTggMTYuMDgzMyAyMiAxMy41NDIyIDIyIDkuMTM3MUMyMiA0LjY3NDY1IDE3LjM2ODUgMS40MDMwOSAxMy4xMjg1IDQuNTA3MTJMMTUuMDYwNSA2LjQzODQzQzE1LjM1MzQgNi43MzEyNyAxNS4zNTM1IDcuMjA2MTQgMTUuMDYwNyA3LjQ5OTA4QzE0Ljc2NzggNy43OTIwMyAxNC4yOTI5IDcuNzkyMTIgMTQgNy40OTkyOFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class HeartAngleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `heart-angle` icon in the boldDuotone style.
  const HeartAngleBoldDuotoneIcon({
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
    name: 'heart-angle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14 7.49928L12 5.50063V20.5C13 20.5 14 19.7294 15.0383 18.9109C15.3153 18.6925 15.6019 18.4717 15.8937 18.2468C18.7018 16.0833 22 13.5422 22 9.1371C22 4.67465 17.3685 1.40309 13.1285 4.50712L15.0605 6.43843C15.3534 6.73127 15.3535 7.20614 15.0607 7.49908C14.7678 7.79203 14.2929 7.79212 14 7.49928Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M2 9.1371C2 13.5422 5.29819 16.0833 8.10627 18.2468C8.39814 18.4717 8.68471 18.6925 8.96173 18.9109C10 19.7294 11 20.5 12 20.5V5.50063C7.50016 0.825464 2 4.27416 2 9.1371Z" fill="currentColor"/>''',
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
