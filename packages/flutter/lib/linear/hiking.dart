// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hiking` icon in the linear style.
class HikingLinearIcon extends StatelessWidget {
  /// Creates the `hiking` icon in the linear style.
  const HikingLinearIcon({
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
    name: 'hiking',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="11.5" cy="4.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 17.5L6 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.9998 10.4997L17.9154 11.4033C17.3136 11.9049 17.0127 12.1556 16.6856 12.275C16.2427 12.4367 15.7569 12.4367 15.3139 12.275C14.9869 12.1556 14.686 11.9049 14.0841 11.4033L14.0028 11.3355C13.7738 11.1447 13.6593 11.0493 13.481 10.9253C13.1663 10.7063 12.6049 10.4221 12.2421 10.2981C12.0366 10.2279 12.1313 10.2513 12.0934 10.2419C11.6804 10.1397 11.4738 10.0886 11.3085 10.103C11.0022 10.1295 10.613 10.404 10.4853 10.6836C10.4163 10.8346 10.4026 10.9717 10.3752 11.2459L10.213 12.8676C10.1262 13.7355 10.0828 14.1695 10.2046 14.5592C10.2657 14.7545 10.3564 14.9393 10.4736 15.1071C10.7073 15.4419 11.0771 15.673 11.8168 16.1354C12.7145 16.6964 13.1634 16.9769 13.4809 17.3715C13.6407 17.57 13.7745 17.788 13.8792 18.0204C14.0872 18.4822 14.1341 19.0094 14.2279 20.0638L14.4002 21.9997" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 22V8" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 10L6.328 10.5573C5.53493 10.8217 5 11.5639 5 12.3998C5 12.7677 5.20781 13.1039 5.5368 13.2684L8 14.5" stroke="currentColor" stroke-linecap="round"/>''',
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
