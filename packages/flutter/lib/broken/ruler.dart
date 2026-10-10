// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ruler` icon in the broken style.
class RulerBrokenIcon extends StatelessWidget {
  /// Creates the `ruler` icon in the broken style.
  const RulerBrokenIcon({
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
    name: 'ruler',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M19 12.2315L19.9546 11.2769C21.3182 9.91327 22 9.23148 22 8.38426C22 7.53704 21.3182 6.85525 19.9546 5.49167L18.5083 4.04537C17.1448 2.68179 16.463 2 15.6157 2C14.7685 2 14.0867 2.68179 12.7231 4.04537L4.04537 12.7231C2.68179 14.0867 2 14.7685 2 15.6157C2 16.463 2.68179 17.1448 4.04537 18.5083L5.49167 19.9546C6.85525 21.3182 7.53704 22 8.38426 22C9.23148 22 9.91327 21.3182 11.2769 19.9546L16.2315 15" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.46436 8.46448L9.87857 9.87869" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.707 4.2218L14.1212 5.63602" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.22192 12.7072L5.63614 14.1214" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.34326 10.5858L8.46458 12.7071" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5857 6.34314L12.707 8.46446" stroke="currentColor" stroke-linecap="round"/>''',
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
