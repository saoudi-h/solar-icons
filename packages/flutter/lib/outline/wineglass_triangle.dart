// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wineglass-triangle` icon in the outline style.
class WineglassTriangleOutlineIcon extends StatelessWidget {
  /// Creates the `wineglass-triangle` icon in the outline style.
  const WineglassTriangleOutlineIcon({
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
    name: 'wineglass-triangle',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.94762 6.38823C1.43049 4.837 2.54526 2.25 4.70095 2.25H19.2991C21.4547 2.25 22.5695 4.83699 21.0524 6.38822L12.75 14.8772V20.25H16.2439C16.6581 20.25 16.9939 20.5858 16.9939 21C16.9939 21.4142 16.6581 21.75 16.2439 21.75H7.75611C7.34189 21.75 7.00611 21.4142 7.00611 21C7.00611 20.5858 7.34189 20.25 7.75611 20.25H11.25V14.8772L2.94762 6.38823ZM12 13.4988L14.9329 10.5H9.06714L12 13.4988ZM7.60012 9H16.3999L19.98 5.33942C20.5553 4.75118 20.1451 3.75 19.2991 3.75H4.70095C3.85492 3.75 3.4447 4.75118 4.02001 5.33942L7.60012 9Z" fill="currentColor"/>''',
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
