// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chevrons-down-up` icon in the outline style.
class ChevronsDownUpOutlineIcon extends StatelessWidget {
  /// Creates the `chevrons-down-up` icon in the outline style.
  const ChevronsDownUpOutlineIcon({
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
    name: 'chevrons-down-up',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M11.4697 14.4697C11.7626 14.1768 12.2373 14.1768 12.5302 14.4697L18.5302 20.4697C18.8231 20.7626 18.8231 21.2373 18.5302 21.5302C18.2373 21.8231 17.7626 21.8231 17.4697 21.5302L11.9999 16.0605L6.53022 21.5302C6.23734 21.8231 5.76257 21.8231 5.46967 21.5302C5.17678 21.2373 5.17678 20.7626 5.46967 20.4697L11.4697 14.4697Z" fill="currentColor"/>
<path d="M17.4697 2.46967C17.7626 2.17678 18.2373 2.17678 18.5302 2.46967C18.8231 2.76257 18.8231 3.23734 18.5302 3.53022L12.5302 9.53022C12.2373 9.82309 11.7626 9.82305 11.4697 9.53022L5.46967 3.53022C5.17678 3.23732 5.17678 2.76256 5.46967 2.46967C5.76256 2.17678 6.23732 2.17678 6.53022 2.46967L11.9999 7.9394L17.4697 2.46967Z" fill="currentColor"/>''',
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
