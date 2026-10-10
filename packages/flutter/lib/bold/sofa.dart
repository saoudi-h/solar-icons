// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sofa` icon in the bold style.
class SofaBoldIcon extends StatelessWidget {
  /// Creates the `sofa` icon in the bold style.
  const SofaBoldIcon({
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
    name: 'sofa',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M20 10C21.1046 10 22 10.8954 22 12V14.4443C22 15.5283 21.5149 16.4992 20.75 17.1514V19C20.75 19.4142 20.4142 19.75 20 19.75C19.5858 19.75 19.25 19.4142 19.25 19V17.9082C18.9912 17.9682 18.7214 18 18.4443 18H5.55566C5.2786 18 5.00883 17.9682 4.75 17.9082V19C4.75 19.4142 4.41421 19.75 4 19.75C3.58579 19.75 3.25 19.4142 3.25 19V17.1514C2.48508 16.4992 2 15.5283 2 14.4443V12C2 10.8954 2.89543 10 4 10C5.10457 10 6 10.8954 6 12V13.2002C6.00011 13.6419 6.35813 13.9999 6.7998 14H17.2002C17.6419 13.9999 17.9999 13.6419 18 13.2002V12C18 10.8954 18.8954 10 20 10Z" fill="currentColor"/>
<path d="M15 5C15.9293 5 16.3939 5.0003 16.7803 5.07715C18.367 5.39278 19.6072 6.63296 19.9229 8.21973C19.9654 8.43387 19.9847 8.672 19.9932 9C18.3395 9.0037 17 10.3454 17 12V13H7V12C7 10.3454 5.66056 9.00367 4.00684 9C4.0153 8.672 4.03456 8.43387 4.07715 8.21973C4.39278 6.63296 5.63296 5.39278 7.21973 5.07715C7.60612 5.00029 8.07071 5 9 5H15Z" fill="currentColor"/>''',
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
