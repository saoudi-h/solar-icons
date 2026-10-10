// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ssd-square` icon in the linear style.
class SsdSquareLinearIcon extends StatelessWidget {
  /// Creates the `ssd-square` icon in the linear style.
  const SsdSquareLinearIcon({
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
    name: 'ssd-square',
    style: SolarIconStyle.linear,
    body: r'''<path d="M19 17V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 17V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 17V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 17V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.8515 14.9557L19 5.11765C18.5 3.52941 17.6046 3 16.5 3H7.5C6.39543 3 5.5 3.52941 5 5.11765L2.14849 14.9557M2 17.2941C2 15.807 2 15.0635 2.33706 14.5294C2.48298 14.2982 2.67048 14.0996 2.88886 13.9451C3.39331 13.5882 4.09554 13.5882 5.5 13.5882H18.5C19.9045 13.5882 20.6067 13.5882 21.1111 13.9451C21.3295 14.0996 21.517 14.2982 21.6629 14.5294C22 15.0635 22 15.807 22 17.2941C22 18.7812 22 19.5247 21.6629 20.0589C21.517 20.2901 21.3295 20.4886 21.1111 20.6431C20.6067 21 19.9045 21 18.5 21H5.5C4.09554 21 3.39331 21 2.88886 20.6431C2.67048 20.4886 2.48298 20.2901 2.33706 20.0589C2 19.5247 2 18.7812 2 17.2941Z" stroke="currentColor" stroke-linecap="round"/>''',
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
