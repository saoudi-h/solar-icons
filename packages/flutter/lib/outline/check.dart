// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOC40Njk3IDYuNDY5NjdDMTguNzYyNiA2LjE3Njc4IDE5LjIzNzMgNi4xNzY3OCAxOS41MzAyIDYuNDY5NjdDMTkuODIzMSA2Ljc2MjU2IDE5LjgyMzEgNy4yMzczMiAxOS41MzAyIDcuNTMwMjJMOS41MzAyMiAxNy41MzAyQzkuMjM3MzIgMTcuODIzMSA4Ljc2MjU2IDE3LjgyMzEgOC40Njk2NyAxNy41MzAyTDQuNDY5NjcgMTMuNTMwMkM0LjE3Njc4IDEzLjIzNzMgNC4xNzY3OCAxMi43NjI2IDQuNDY5NjcgMTIuNDY5N0M0Ljc2MjU2IDEyLjE3NjggNS4yMzczMiAxMi4xNzY4IDUuNTMwMjIgMTIuNDY5N0w4Ljk5OTk0IDE1LjkzOTRMMTguNDY5NyA2LjQ2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class CheckOutlineIcon extends StatelessWidget {
  /// Creates the `check` icon in the outline style.
  const CheckOutlineIcon({
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
    name: 'check',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M18.4697 6.46967C18.7626 6.17678 19.2373 6.17678 19.5302 6.46967C19.8231 6.76256 19.8231 7.23732 19.5302 7.53022L9.53022 17.5302C9.23732 17.8231 8.76256 17.8231 8.46967 17.5302L4.46967 13.5302C4.17678 13.2373 4.17678 12.7626 4.46967 12.4697C4.76256 12.1768 5.23732 12.1768 5.53022 12.4697L8.99994 15.9394L18.4697 6.46967Z" fill="currentColor"/>''',
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
