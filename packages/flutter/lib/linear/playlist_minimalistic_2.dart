// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `playlist-minimalistic-2` icon in the linear style.
class PlaylistMinimalistic2LinearIcon extends StatelessWidget {
  /// Creates the `playlist-minimalistic-2` icon in the linear style.
  const PlaylistMinimalistic2LinearIcon({
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
    name: 'playlist-minimalistic-2',
    style: SolarIconStyle.linear,
    body: r'''<path d="M15 6L3 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 10L3 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 14H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 18H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 16.5V12.5V8" stroke="currentColor" stroke-linecap="round"/>
<circle cx="14.5" cy="16.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 12C18.7909 12 17 10.2091 17 8" stroke="currentColor" stroke-linecap="round"/>''',
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
