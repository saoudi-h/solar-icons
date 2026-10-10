// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hospital` icon in the broken style.
class HospitalBrokenIcon extends StatelessWidget {
  /// Creates the `hospital` icon in the broken style.
  const HospitalBrokenIcon({
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
    name: 'hospital',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 22L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 22V6C17 4.11438 17 3.17157 16.4142 2.58579C15.8284 2 14.8856 2 13 2H11C9.11438 2 8.17157 2 7.58579 2.58579C7 3.17157 7 4.11438 7 6V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22V19" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 12H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.5 11H7" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.5 14H7" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 11H18.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 14H18.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.5 8H7" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 8H18.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 9V5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14 7L10 7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M21 8.5C21 7.09554 21 6.39331 20.6629 5.88886C20.517 5.67048 20.3295 5.48298 20.1111 5.33706C19.6067 5 18.9045 5 17.5 5M21 22V12.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 22V17M6.5 5C5.09554 5 4.39331 5 3.88886 5.33706C3.67048 5.48298 3.48298 5.67048 3.33706 5.88886C3 6.39331 3 7.09554 3 8.5V13" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 15H10.5M14 15H12.5" stroke="currentColor" stroke-linecap="round"/>''',
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
