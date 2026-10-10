// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `soundwave` icon in the broken style.
class SoundwaveBrokenIcon extends StatelessWidget {
  /// Creates the `soundwave` icon in the broken style.
  const SoundwaveBrokenIcon({
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
    name: 'soundwave',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 4L12 20" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 7L16 9M16 17L16 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 17L8 15M8 7L8 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 11L20 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 11L4 13" stroke="currentColor" stroke-linecap="round"/>''',
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
