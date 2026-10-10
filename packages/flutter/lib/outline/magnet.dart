// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `magnet` icon in the outline style.
class MagnetOutlineIcon extends StatelessWidget {
  /// Creates the `magnet` icon in the outline style.
  const MagnetOutlineIcon({
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
    name: 'magnet',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M13 2.75C7.89137 2.75 3.75 6.89137 3.75 12C3.75 17.1086 7.89137 21.25 13 21.25H16.25V17.75H13C9.82436 17.75 7.25 15.1756 7.25 12C7.25 8.82436 9.82436 6.25 13 6.25H16.25V2.75H13ZM17.75 2.75V6.25H19.5C19.9142 6.25 20.25 5.91421 20.25 5.5V3.5C20.25 3.08579 19.9142 2.75 19.5 2.75H17.75ZM17.75 17.75V21.25H19.5C19.9142 21.25 20.25 20.9142 20.25 20.5V18.5C20.25 18.0858 19.9142 17.75 19.5 17.75H17.75ZM2.25 12C2.25 6.06294 7.06294 1.25 13 1.25H19.5C20.7426 1.25 21.75 2.25736 21.75 3.5V5.5C21.75 6.74264 20.7426 7.75 19.5 7.75H13C10.6528 7.75 8.75 9.65279 8.75 12C8.75 14.3472 10.6528 16.25 13 16.25H19.5C20.7426 16.25 21.75 17.2574 21.75 18.5V20.5C21.75 21.7426 20.7426 22.75 19.5 22.75H13C7.06294 22.75 2.25 17.9371 2.25 12Z" fill="currentColor"/>''',
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
