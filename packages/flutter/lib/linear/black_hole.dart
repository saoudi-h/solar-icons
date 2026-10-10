// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `black-hole` icon in the linear style.
class BlackHoleLinearIcon extends StatelessWidget {
  /// Creates the `black-hole` icon in the linear style.
  const BlackHoleLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 10C17 10 16.6 22 9 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.3115 14C7.31152 14 7.71152 2 15.3115 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.6316 10.6961C14.1671 7.16053 22.3695 15.9287 16.9955 21.3027" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M13.6799 13.3039C10.1444 16.8395 1.94198 8.07135 7.31599 2.69734" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M10.8513 13.5242C7.3158 9.98865 16.0839 1.78622 21.4579 7.16023" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
<path d="M13.4602 10.4758C16.9957 14.0113 8.2276 22.2138 2.85359 16.8398" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2 2"/>
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
