// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `satellite` icon in the linear style.
class SatelliteLinearIcon extends StatelessWidget {
  /// Creates the `satellite` icon in the linear style.
  const SatelliteLinearIcon({
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
    name: 'satellite',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20.4699 10.918C18.4298 12.9581 15.1221 12.9581 13.082 10.918C11.0418 8.87785 11.0418 5.57019 13.082 3.53008M20.4699 10.918C22.51 8.87785 22.51 5.57019 20.4699 3.53008C18.4298 1.48997 15.1221 1.48997 13.082 3.53008M20.4699 10.918C20.4699 10.918 18.6229 10.3025 16.1602 7.8399M20.4699 10.918L14.3132 22M13.082 3.53008C13.082 3.53008 13.6976 5.37728 16.1602 7.8399M13.082 3.53008L2 9.68687M16.1602 7.8399L5 19" stroke="currentColor" stroke-linecap="round"/>''',
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
