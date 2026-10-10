// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `key-minimalistic-2` icon in the linear style.
class KeyMinimalistic2LinearIcon extends StatelessWidget {
  /// Creates the `key-minimalistic-2` icon in the linear style.
  const KeyMinimalistic2LinearIcon({
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
    name: 'key-minimalistic-2',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="15" cy="9" r="7" stroke="currentColor" stroke-linecap="round"/>
<circle cx="15" cy="9" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.5 20.5L9.5 14.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 21L4.5 19.5M6.5 17.5L8 19" stroke="currentColor" stroke-linecap="round"/>''',
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
