// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hearts` icon in the broken style.
class HeartsBrokenIcon extends StatelessWidget {
  /// Creates the `hearts` icon in the broken style.
  const HeartsBrokenIcon({
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
    name: 'hearts',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M6.52401 17C7.34949 17.6794 8.19243 18.3044 8.96173 18.9109C10 19.7294 11 20.5 12 20.5C12.6939 20.5 13.3878 20.1289 14.0945 19.6283M14.0945 19.6283C14.3462 19.8137 14.5939 19.993 14.8291 20.1692C15.4001 20.5971 15.95 21 16.5 21C17.05 21 17.6 20.5971 18.171 20.1692C18.4357 19.9709 18.7161 19.7689 19.0001 19.5584M21.5091 17C21.8135 16.4363 22 15.798 22 15.0595C22 14.2243 21.6735 13.4689 21.1474 12.9177C21.1311 12.9007 21.1147 12.8838 21.098 12.8672C20.0141 11.7831 18.1368 11.5419 16.5 13.1584C14.8381 11.5171 12.9283 11.7909 11.8528 12.9177C11.3266 13.4689 11.0001 14.2243 11.0001 15.0595C11.0001 17.2323 12.6149 18.5377 14.0945 19.6283M3 13.0516C2.38338 11.9242 2 10.639 2 9.1371C2 4.27416 7.50016 0.825464 12 5.50063C16.4998 0.825464 22 4.27416 22 9.1371C22 10.5577 21.657 11.7844 21.098 12.8672" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
