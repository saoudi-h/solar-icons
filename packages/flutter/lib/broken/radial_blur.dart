// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `radial-blur` icon in the broken style.
class RadialBlurBrokenIcon extends StatelessWidget {
  /// Creates the `radial-blur` icon in the broken style.
  const RadialBlurBrokenIcon({
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
    name: 'radial-blur',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15.5 14.25C15.5 14.9404 14.9404 15.5 14.25 15.5C13.5596 15.5 13 14.9404 13 14.25C13 13.5596 13.5596 13 14.25 13C14.9404 13 15.5 13.5596 15.5 14.25Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 9.75C15.5 10.4404 14.9404 11 14.25 11C13.5596 11 13 10.4404 13 9.75C13 9.05964 13.5596 8.5 14.25 8.5C14.9404 8.5 15.5 9.05964 15.5 9.75Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 14.25C11 14.9404 10.4404 15.5 9.75 15.5C9.05964 15.5 8.5 14.9404 8.5 14.25C8.5 13.5596 9.05964 13 9.75 13C10.4404 13 11 13.5596 11 14.25Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 9.75C11 10.4404 10.4404 11 9.75 11C9.05964 11 8.5 10.4404 8.5 9.75C8.5 9.05964 9.05964 8.5 9.75 8.5C10.4404 8.5 11 9.05964 11 9.75Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.75 5.75H9.7501" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.75 9.75H5.7501" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.75 14.25H5.7501" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.75 18.25H9.7501" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.25 18.25H14.2501" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.25 14.25H18.2501" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.25 9.75H18.2501" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.25 5.75H14.2501" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
