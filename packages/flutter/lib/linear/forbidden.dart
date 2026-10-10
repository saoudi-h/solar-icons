// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `forbidden` icon in the linear style.
class ForbiddenLinearIcon extends StatelessWidget {
  /// Creates the `forbidden` icon in the linear style.
  const ForbiddenLinearIcon({
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
    name: 'forbidden',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M18.5 5.5L5.50002 18.4998" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 10.8489V13.1511C22 14.3773 22 14.9905 21.7716 15.5418C21.5433 16.0931 21.1097 16.5266 20.2426 17.3937L17.3937 20.2426C16.5266 21.1097 16.0931 21.5433 15.5418 21.7716C14.9905 22 14.3773 22 13.1511 22H10.8489C9.62267 22 9.00954 22 8.45823 21.7716C7.90691 21.5433 7.47337 21.1097 6.60628 20.2426L3.75736 17.3937C2.89027 16.5266 2.45672 16.0931 2.22836 15.5418C2 14.9905 2 14.3773 2 13.1511V10.8489C2 9.62267 2 9.00954 2.22836 8.45823C2.45672 7.90691 2.89027 7.47337 3.75736 6.60628L6.60628 3.75736C7.47337 2.89027 7.90691 2.45672 8.45823 2.22836C9.00954 2 9.62267 2 10.8489 2H13.1511C14.3773 2 14.9905 2 15.5418 2.22836C16.0931 2.45672 16.5266 2.89027 17.3937 3.75736L20.2426 6.60628C21.1097 7.47337 21.5433 7.90691 21.7716 8.45823C22 9.00954 22 9.62267 22 10.8489Z" stroke="currentColor" stroke-linecap="round"/>''',
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
