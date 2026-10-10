// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `oven-mitts-minimalistic` icon in the bold style.
class OvenMittsMinimalisticBoldIcon extends StatelessWidget {
  /// Creates the `oven-mitts-minimalistic` icon in the bold style.
  const OvenMittsMinimalisticBoldIcon({
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
    name: 'oven-mitts-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.58758 20.0262L4.0188 16.5368C2.67293 15.221 2 14.563 2 13.7454C2 13.2089 2.28972 12.7412 2.86916 12.1112C3.46036 11.4685 3.75595 11.1471 3.88968 10.8109C4.02341 10.4748 4.02705 10.0967 4.03433 9.34056L4.06648 5.99923C4.03217 3.81732 5.44093 2.02694 7.21305 2.0003C8.66759 1.97843 9.91482 3.15159 10.3341 4.77929L10.7995 4.32429C13.3618 1.81908 17.516 1.81908 20.0783 4.32429C22.6406 6.82951 22.6406 10.8913 20.0783 13.3965L13.2976 20.0262C11.9518 21.3421 11.2788 22 10.4426 22C9.60638 22 8.93345 21.3421 7.58758 20.0262ZM5.98033 12.8722C6.26991 12.576 6.74475 12.5706 7.04093 12.8602L11.3235 17.0474C11.6196 17.337 11.625 17.8118 11.3354 18.108C11.0458 18.4041 10.571 18.4095 10.2748 18.1199L5.99228 13.9328C5.6961 13.6432 5.69076 13.1683 5.98033 12.8722Z" fill="currentColor"/>''',
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
