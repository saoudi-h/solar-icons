// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `oven-mitts` icon in the broken style.
class OvenMittsBrokenIcon extends StatelessWidget {
  /// Creates the `oven-mitts` icon in the broken style.
  const OvenMittsBrokenIcon({
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
    name: 'oven-mitts',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M4.0188 16.5368C2.67293 15.221 2 14.563 2 13.7454C2 13.2089 2.28972 12.7412 2.86916 12.1112C3.45336 11.4761 3.74891 11.1548 3.88487 10.8229C3.88649 10.8189 3.8881 10.8149 3.88968 10.8109C4.02341 10.4748 4.02705 10.0967 4.03433 9.34056L4.06648 5.99923C4.03217 3.81732 5.44093 2.02694 7.21305 2.0003C8.66759 1.97843 9.91482 3.15159 10.3341 4.77929M9.37197 5.72001L10.3341 4.77929L10.7995 4.32429C13.3618 1.81908 17.516 1.81908 20.0783 4.32429C22.6406 6.82951 22.6406 10.8913 20.0783 13.3965M17.4155 16L16.688 16.7113L13.2976 20.0262C13.2976 20.0262 13.2975 20.0263 13.2974 20.0263C11.9517 21.3421 11.2788 22 10.4426 22C9.60638 22 8.93345 21.3421 7.58758 20.0262L6.51695 18.9794" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.9775 18.7583C12.4175 19.181 12.8574 19.6037 13.2973 20.0264" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3.88489 10.823C5.80925 12.7121 7.73361 14.6012 9.65797 16.4903" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
