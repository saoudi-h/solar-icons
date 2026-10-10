// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `airbuds-right` icon in the linear style.
class AirbudsRightLinearIcon extends StatelessWidget {
  /// Creates the `airbuds-right` icon in the linear style.
  const AirbudsRightLinearIcon({
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
    name: 'airbuds-right',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M16 18.6667V12C16 11.4477 15.5523 11 15 11C13.3431 11 12 9.65685 12 8V5.375L12 5.33562C12.0095 3.49738 13.4974 2.00954 15.3356 2.00004L15.375 2L15.4406 2.00007C18.5044 2.01591 20.9841 4.49563 20.9999 7.55936L21 7.625V18.6667M16 18.6667V19.5C16 19.6393 16 19.7089 16.003 19.7678C16.0634 20.973 17.027 21.9366 18.2322 21.997C18.2911 22 18.3607 22 18.5 22C18.6393 22 18.7089 22 18.7678 21.997C19.973 21.9366 20.9366 20.973 20.997 19.7678C21 19.7089 21 19.6393 21 19.5V18.6667M16 18.6667H21" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 5V8" stroke="currentColor" stroke-linecap="round"/>
<circle cx="7.5" cy="16.5" r="5.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.00008 5.09961C7.04095 5.49729 5.49778 7.04046 5.1001 8.99959" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 19V14H7.5C8.32843 14 9 14.5596 9 15.25C9 15.9404 8.32843 16.5 7.5 16.5M6 14V16.5H7.5M7.5 16.5L9 19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
