// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bill-2` icon in the broken style.
class Bill2BrokenIcon extends StatelessWidget {
  /// Creates the `bill-2` icon in the broken style.
  const Bill2BrokenIcon({
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
    name: 'bill-2',
    style: SolarIconStyle.broken,
    body: r'''<path d="M2 2H22" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.04897 18.5309C9.93152 20.177 10.8728 21 12 21C13.1272 21 14.0685 20.177 15.951 18.5309L17.951 16.7822C18.9595 15.9004 19.4638 15.4595 19.7319 14.8691C20 14.2787 20 13.6091 20 12.27V9.70249M20 6V2H4V12.27C4 13.6091 4 14.2787 4.2681 14.8691C4.44333 15.255 4.71945 15.577 5.17131 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 13L15.5 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 8L15.5 8" stroke="currentColor" stroke-linecap="round"/>''',
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
