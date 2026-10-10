// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `history` icon in the broken style.
class HistoryBrokenIcon extends StatelessWidget {
  /// Creates the `history` icon in the broken style.
  const HistoryBrokenIcon({
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
    name: 'history',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 8V12L14.5 14.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.332 5.66819C14.7997 2.13585 9.10124 2.10721 5.60423 5.60423L4.33785 6.87061M4.32506 4.32506L4.33785 6.87061L6.8834 6.8834M3 12C3 16.9706 7.02944 21 12 21C13.6393 21 15.1762 20.5617 16.5 19.796M19.796 16.5C20.5617 15.1762 21 13.6393 21 12C21 7.02944 16.9706 3 12 3C9.53094 3 7.2941 3.99425 5.66801 5.60423" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
