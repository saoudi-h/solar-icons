// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `podcast` icon in the linear style.
class PodcastLinearIcon extends StatelessWidget {
  /// Creates the `podcast` icon in the linear style.
  const PodcastLinearIcon({
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
    name: 'podcast',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9 10C9 8.34315 10.3431 7 12 7C13.6569 7 15 8.34315 15 10V13C15 14.6569 13.6569 16 12 16C10.3431 16 9 14.6569 9 13V10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 10L15 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 13L15 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 10L10 10M9 13L10 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.15381 16C5.17341 16 5.99996 15.1734 5.99996 14.1538V9.99998C5.99996 6.68628 8.68624 4 11.9999 4C15.3136 4 17.9999 6.68628 17.9999 9.99998V14.1538C17.9999 15.1734 18.8265 16 19.8461 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12C2 10.8954 2.89543 10 4 10C5.10457 10 6 10.8954 6 12V14C6 15.1046 5.10457 16 4 16C2.89543 16 2 15.1046 2 14V12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 12C18 10.8954 18.8954 10 20 10C21.1046 10 22 10.8954 22 12V14C22 15.1046 21.1046 16 20 16C18.8954 16 18 15.1046 18 14V12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 16V19" stroke="currentColor" stroke-linecap="round"/>''',
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
