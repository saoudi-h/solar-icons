// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `black-hole` icon in the broken style.
class BlackHoleBrokenIcon extends StatelessWidget {
  /// Creates the `black-hole` icon in the broken style.
  const BlackHoleBrokenIcon({
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
    name: 'black-hole',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 10C17 10 16.6 22 9 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.3115 14C7.31152 14 7.71152 2 15.3115 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.6313 10.6961C14.1669 7.16053 22.3693 15.9287 16.9953 21.3027" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M13.6802 13.3039C10.1447 16.8395 1.94222 8.07135 7.31623 2.69734" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M10.8516 13.5242C7.31605 9.98865 16.0842 1.78622 21.4582 7.16023" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M13.4599 10.4758C16.9955 14.0113 8.22736 22.2138 2.85334 16.8398" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M10 12.3115C10 7.31152 22 7.71152 22 15.3115" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 12C14 17 2 16.6 2 9" stroke="currentColor" stroke-linecap="round"/>''',
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
