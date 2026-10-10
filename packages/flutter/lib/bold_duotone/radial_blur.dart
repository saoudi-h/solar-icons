// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `radial-blur` icon in the boldDuotone style.
class RadialBlurBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `radial-blur` icon in the boldDuotone style.
  const RadialBlurBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15.5 9.75C15.5 10.4404 14.9404 11 14.25 11C13.5596 11 13 10.4404 13 9.75C13 9.05964 13.5596 8.5 14.25 8.5C14.9404 8.5 15.5 9.05964 15.5 9.75Z" fill="currentColor"/>
<path d="M11 9.75C11 10.4404 10.4404 11 9.75 11C9.05964 11 8.5 10.4404 8.5 9.75C8.5 9.05964 9.05964 8.5 9.75 8.5C10.4404 8.5 11 9.05964 11 9.75Z" fill="currentColor"/>
<path d="M5.75 9C6.16421 9 6.5 9.33579 6.5 9.75C6.5 10.1642 6.16421 10.5 5.75 10.5C5.33579 10.5 5 10.1642 5 9.75C5 9.33579 5.33579 9 5.75 9Z" fill="currentColor"/>
<path d="M10.5 5.75C10.5 6.16421 10.1642 6.5 9.75 6.5C9.33579 6.5 9 6.16421 9 5.75C9 5.33579 9.33579 5 9.75 5C10.1642 5 10.5 5.33579 10.5 5.75Z" fill="currentColor"/>
<path d="M15 5.75C15 6.16421 14.6642 6.5 14.25 6.5C13.8358 6.5 13.5 6.16421 13.5 5.75C13.5 5.33579 13.8358 5 14.25 5C14.6642 5 15 5.33579 15 5.75Z" fill="currentColor"/>
<path d="M19 9.75C19 9.33579 18.6642 9 18.25 9C17.8358 9 17.5 9.33579 17.5 9.75C17.5 10.1642 17.8358 10.5 18.25 10.5C18.6642 10.5 19 10.1642 19 9.75Z" fill="currentColor"/>
<path d="M19 14.25C19 13.8358 18.6642 13.5 18.25 13.5C17.8358 13.5 17.5 13.8358 17.5 14.25C17.5 14.6642 17.8358 15 18.25 15C18.6642 15 19 14.6642 19 14.25Z" fill="currentColor"/>
<path d="M15.5 14.25C15.5 14.9404 14.9404 15.5 14.25 15.5C13.5596 15.5 13 14.9404 13 14.25C13 13.5596 13.5596 13 14.25 13C14.9404 13 15.5 13.5596 15.5 14.25Z" fill="currentColor"/>
<path d="M9.75 15.5C10.4404 15.5 11 14.9404 11 14.25C11 13.5596 10.4404 13 9.75 13C9.05964 13 8.5 13.5596 8.5 14.25C8.5 14.9404 9.05964 15.5 9.75 15.5Z" fill="currentColor"/>
<path d="M5.75 13.5C6.16421 13.5 6.5 13.8358 6.5 14.25C6.5 14.6642 6.16421 15 5.75 15C5.33579 15 5 14.6642 5 14.25C5 13.8358 5.33579 13.5 5.75 13.5Z" fill="currentColor"/>
<path d="M10.5 18.25C10.5 18.6642 10.1642 19 9.75 19C9.33579 19 9 18.6642 9 18.25C9 17.8358 9.33579 17.5 9.75 17.5C10.1642 17.5 10.5 17.8358 10.5 18.25Z" fill="currentColor"/>
<path d="M14.25 19C14.6642 19 15 18.6642 15 18.25C15 17.8358 14.6642 17.5 14.25 17.5C13.8358 17.5 13.5 17.8358 13.5 18.25C13.5 18.6642 13.8358 19 14.25 19Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="10" fill="currentColor"/>''',
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
