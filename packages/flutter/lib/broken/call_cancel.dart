// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `call-cancel` icon in the broken style.
class CallCancelBrokenIcon extends StatelessWidget {
  /// Creates the `call-cancel` icon in the broken style.
  const CallCancelBrokenIcon({
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
    name: 'call-cancel',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20 4.00002L16 8M16 4L20 7.99998" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.00293 6.96582C3.09308 8.64534 3.81076 12.2589 7.8154 16.4751C8.92856 17.647 10.0237 18.524 11.0632 19.1772" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.9592 20.7925C16.1226 21.0361 17.0651 21.0234 17.6763 20.9631C18.1917 20.9122 18.6399 20.6343 19.0011 20.254L20.4217 18.7584C21.3806 17.7489 21.1102 16.0182 19.8833 15.312L17.9728 14.2123C17.1673 13.7486 16.1858 13.8848 15.5562 14.5477L15.1007 15.0272C15.1007 15.0272 14.0182 16.167 11.0631 13.0559C8.10814 9.94484 9.19073 8.80507 9.19073 8.80507L9.47754 8.50311C10.1841 7.75924 10.2507 6.56497 9.63427 5.6931L8.37328 3.90962C7.61031 2.8305 6.13598 2.68795 5.26147 3.60864" stroke="currentColor" stroke-linecap="round"/>''',
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
