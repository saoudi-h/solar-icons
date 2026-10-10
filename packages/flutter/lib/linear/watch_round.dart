// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `watch-round` icon in the linear style.
class WatchRoundLinearIcon extends StatelessWidget {
  /// Creates the `watch-round` icon in the linear style.
  const WatchRoundLinearIcon({
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
    name: 'watch-round',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M7.0249 6.38745C7.11788 5.96906 7.21085 5.55067 7.30383 5.13228C7.63752 3.63065 7.80437 2.87983 8.35278 2.43992C8.90119 2 9.67032 2 11.2086 2H12.7912C14.3295 2 15.0986 2 15.647 2.43992C16.1954 2.87983 16.3623 3.63065 16.696 5.13228C16.7889 5.55067 16.8819 5.96906 16.9749 6.38745" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.0249 17.6123C7.11788 18.0307 7.21085 18.4491 7.30383 18.8675C7.63753 20.3691 7.80437 21.1199 8.35278 21.5598C8.90119 21.9998 9.67032 21.9998 11.2086 21.9998H12.7912C14.3295 21.9998 15.0986 21.9998 15.647 21.5598C16.1954 21.1199 16.3623 20.3691 16.696 18.8675C16.7889 18.4491 16.8819 18.0307 16.9749 17.6123" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.5 12C19.5 16.1421 16.1421 19.5 12 19.5C7.85786 19.5 4.5 16.1421 4.5 12C4.5 7.85786 7.85786 4.5 12 4.5C16.1421 4.5 19.5 7.85786 19.5 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 8.92283V11.9998L14 13.9228" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
