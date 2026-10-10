// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `widget-4` icon in the bold style.
class Widget4BoldIcon extends StatelessWidget {
  /// Creates the `widget-4` icon in the bold style.
  const Widget4BoldIcon({
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
    name: 'widget-4',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M6.5 2C8.62101 2 9.68179 1.99987 10.3408 2.61621C10.9998 3.23283 11 4.22608 11 6.21094V17.7891C11 19.7739 10.9998 20.7672 10.3408 21.3838C9.68179 22.0001 8.62101 22 6.5 22C4.37899 22 3.31821 22.0001 2.65918 21.3838C2.00017 20.7672 2 19.7739 2 17.7891V6.21094C2 4.22608 2.00017 3.23283 2.65918 2.61621C3.31821 1.99987 4.37899 2 6.5 2Z" fill="currentColor"/>
<path d="M17.5 11C19.6213 11 20.6818 11.0002 21.3408 11.6445C21.9998 12.2889 22 13.3262 22 15.4004V17.5996C22 19.6738 21.9998 20.7111 21.3408 21.3555C20.6818 21.9998 19.6213 22 17.5 22C15.3787 22 14.3182 21.9998 13.6592 21.3555C13.0002 20.7111 13 19.6738 13 17.5996V15.4004C13 13.3262 13.0002 12.2889 13.6592 11.6445C14.3182 11.0002 15.3787 11 17.5 11Z" fill="currentColor"/>
<path d="M18.625 2C19.6734 2 20.1978 2.00012 20.6113 2.17773C21.1625 2.41459 21.6008 2.8688 21.8291 3.44043C22.0003 3.86921 22 4.41293 22 5.5C22 6.58707 22.0003 7.13079 21.8291 7.55957C21.6008 8.1312 21.1625 8.58541 20.6113 8.82227C20.1978 8.99988 19.6734 9 18.625 9H16.375C15.3266 9 14.8022 8.99988 14.3887 8.82227C13.8375 8.58541 13.3992 8.1312 13.1709 7.55957C12.9997 7.13079 13 6.58707 13 5.5C13 4.41293 12.9997 3.86921 13.1709 3.44043C13.3992 2.8688 13.8375 2.41459 14.3887 2.17773C14.8022 2.00012 15.3266 2 16.375 2H18.625Z" fill="currentColor"/>''',
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
