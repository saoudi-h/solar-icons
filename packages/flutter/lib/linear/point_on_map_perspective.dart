// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `point-on-map-perspective` icon in the linear style.
class PointOnMapPerspectiveLinearIcon extends StatelessWidget {
  /// Creates the `point-on-map-perspective` icon in the linear style.
  const PointOnMapPerspectiveLinearIcon({
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
    name: 'point-on-map-perspective',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M21.1213 21.1213C22 20.2426 22 18.8284 22 16C22 13.1716 22 11.7574 21.1213 10.8787M21.1213 10.8787C20.2426 10 18.8284 10 16 10L8 10C5.17157 10 3.75736 10 2.87868 10.8787C2 11.7574 2 13.1716 2 16C2 18.8284 2 20.2426 2.87868 21.1213C3.75736 22 5.17157 22 8 22H16C18.8284 22 20.2426 22 21.1213 21.1213M21.1213 21.1213V21.1213ZM21.1213 10.8787V10.8787ZM2.87868 10.8787V10.8787ZM2.87868 21.1213V21.1213Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.1568 21.0875C17.14 18.856 6.85926 13.1445 2.84277 10.9131" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.0415 21.2697C6.01842 19.5185 11.9999 16 11.9999 16" stroke="currentColor" stroke-linecap="round"/>
<circle cx="17" cy="5" r="3" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 13L17 8" stroke="currentColor" stroke-linecap="round"/>''',
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
