// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `phone` icon in the linear style.
class PhoneLinearIcon extends StatelessWidget {
  /// Creates the `phone` icon in the linear style.
  const PhoneLinearIcon({
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
    name: 'phone',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M18.6763 19.9631C19.1917 19.9122 19.6399 19.6343 20.0011 19.254L21.4217 17.7584C22.3806 16.7489 22.1102 15.0182 20.8833 14.312L18.9728 13.2123C18.1672 12.7486 17.1858 12.8848 16.5562 13.5477L16.1007 14.0272C16.1007 14.0272 15.0181 15.167 12.0631 12.0559C9.10812 8.94484 10.1907 7.80507 10.1907 7.80507L10.4775 7.50311C11.1841 6.75924 11.2507 5.56497 10.6342 4.6931L9.37326 2.90961C8.61028 1.8305 7.13596 1.68795 6.26145 2.60864L4.69185 4.26114C4.25823 4.71766 3.96765 5.30945 4.00289 5.96594C4.09304 7.64546 4.81072 11.259 8.81536 15.4752C13.0621 19.9462 17.0468 20.1239 18.6763 19.9631Z" stroke="currentColor" stroke-linecap="round"/>''',
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
