// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grip` icon in the broken style.
class GripBrokenIcon extends StatelessWidget {
  /// Creates the `grip` icon in the broken style.
  const GripBrokenIcon({
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
    name: 'grip',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12.0161" cy="19" r="0.75" transform="rotate(90 12.0161 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12.0161" cy="12" r="0.75" transform="rotate(90 12.0161 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="5" r="0.75" transform="rotate(90 12 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="5.00781" cy="19" r="0.75" transform="rotate(90 5.00781 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="5.00781" cy="12" r="0.75" transform="rotate(90 5.00781 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="4.99219" cy="5" r="0.75" transform="rotate(90 4.99219 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19.0078" cy="19" r="0.75" transform="rotate(90 19.0078 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19.0078" cy="12" r="0.75" transform="rotate(90 19.0078 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="18.9922" cy="5" r="0.75" transform="rotate(90 18.9922 5)" stroke="currentColor" stroke-linecap="round"/>''',
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
