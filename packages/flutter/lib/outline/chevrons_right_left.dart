// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chevrons-right-left` icon in the outline style.
class ChevronsRightLeftOutlineIcon extends StatelessWidget {
  /// Creates the `chevrons-right-left` icon in the outline style.
  const ChevronsRightLeftOutlineIcon({
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
    name: 'chevrons-right-left',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M2.46967 5.46967C2.76256 5.17678 3.23732 5.17678 3.53022 5.46967L9.53022 11.4697C9.82305 11.7626 9.82309 12.2373 9.53022 12.5302L3.53022 18.5302C3.23734 18.8231 2.76257 18.8231 2.46967 18.5302C2.17678 18.2373 2.17678 17.7626 2.46967 17.4697L7.9394 11.9999L2.46967 6.53022C2.17678 6.23732 2.17678 5.76256 2.46967 5.46967Z" fill="currentColor"/>
<path d="M20.4697 5.46967C20.7626 5.17678 21.2373 5.17678 21.5302 5.46967C21.8231 5.76257 21.8231 6.23734 21.5302 6.53022L16.0605 11.9999L21.5302 17.4697C21.8231 17.7626 21.8231 18.2373 21.5302 18.5302C21.2373 18.8231 20.7626 18.8231 20.4697 18.5302L14.4697 12.5302C14.1768 12.2373 14.1768 11.7626 14.4697 11.4697L20.4697 5.46967Z" fill="currentColor"/>''',
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
