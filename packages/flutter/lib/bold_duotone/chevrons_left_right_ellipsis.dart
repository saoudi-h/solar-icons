// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `chevrons-left-right-ellipsis` icon in the boldDuotone style.
class ChevronsLeftRightEllipsisBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `chevrons-left-right-ellipsis` icon in the boldDuotone style.
  const ChevronsLeftRightEllipsisBoldDuotoneIcon({
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
    name: 'chevrons-left-right-ellipsis',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7.46967 5.46967C7.76256 5.17678 8.23732 5.17678 8.53022 5.46967C8.82305 5.76257 8.82309 6.23734 8.53022 6.53022L3.06049 11.9999L8.53022 17.4697C8.82305 17.7626 8.82309 18.2373 8.53022 18.5302C8.23734 18.8231 7.76257 18.8231 7.46967 18.5302L1.46967 12.5302C1.17678 12.2373 1.17678 11.7626 1.46967 11.4697L7.46967 5.46967Z" fill="currentColor"/>
<path d="M15.4697 5.46967C15.7626 5.17678 16.2373 5.17678 16.5302 5.46967L22.5302 11.4697C22.8231 11.7626 22.8231 12.2373 22.5302 12.5302L16.5302 18.5302C16.2373 18.8231 15.7626 18.8231 15.4697 18.5302C15.1768 18.2373 15.1768 17.7626 15.4697 17.4697L20.9394 11.9999L15.4697 6.53022C15.1768 6.23732 15.1768 5.76256 15.4697 5.46967Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M8.00879 11.25C8.423 11.25 8.75879 11.5858 8.75879 12C8.75879 12.4142 8.423 12.75 8.00879 12.75H8C7.58579 12.75 7.25 12.4142 7.25 12C7.25 11.5858 7.58579 11.25 8 11.25H8.00879Z" fill="currentColor"/>
<path d="M12 11.25C12.4142 11.25 12.75 11.5858 12.75 12C12.75 12.4142 12.4142 12.75 12 12.75H11.9912C11.577 12.75 11.2412 12.4142 11.2412 12C11.2412 11.5858 11.577 11.25 11.9912 11.25H12Z" fill="currentColor"/>
<path d="M16 11.25C16.4142 11.25 16.75 11.5858 16.75 12C16.75 12.4142 16.4142 12.75 16 12.75H15.9912C15.577 12.75 15.2412 12.4142 15.2412 12C15.2412 11.5858 15.577 11.25 15.9912 11.25H16Z" fill="currentColor"/>
</g>''',
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
