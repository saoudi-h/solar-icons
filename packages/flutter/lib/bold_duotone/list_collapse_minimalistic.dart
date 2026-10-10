// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-collapse-minimalistic` icon in the boldDuotone style.
class ListCollapseMinimalisticBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `list-collapse-minimalistic` icon in the boldDuotone style.
  const ListCollapseMinimalisticBoldDuotoneIcon({
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
    name: 'list-collapse-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M4.79839 11.4305C5.11288 11.1613 5.58653 11.1972 5.85601 11.5116L7.56987 13.5116C7.81037 13.7924 7.81037 14.2074 7.56987 14.4882L5.85601 16.4882C5.58654 16.8025 5.11288 16.8385 4.79839 16.5692C4.48393 16.2997 4.4469 15.8261 4.71636 15.5116L6.01323 13.9999L4.71636 12.4882C4.4469 12.1737 4.48393 11.7001 4.79839 11.4305Z" fill="currentColor"/>
<path d="M4.79839 5.43053C5.11288 5.16128 5.58653 5.1972 5.85601 5.51159L7.56987 7.51159C7.81037 7.79238 7.81037 8.20736 7.56987 8.48815L5.85601 10.4882C5.58654 10.8025 5.11288 10.8385 4.79839 10.5692C4.48393 10.2997 4.4469 9.82608 4.71636 9.51159L6.01323 7.99987L4.71636 6.48815C4.4469 6.17366 4.48393 5.70007 4.79839 5.43053Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M20 15.25C20.4142 15.25 20.75 15.5858 20.75 16C20.75 16.4142 20.4142 16.75 20 16.75H12C11.5858 16.75 11.25 16.4142 11.25 16C11.25 15.5858 11.5858 15.25 12 15.25H20Z" fill="currentColor"/>
<path d="M20 10.25C20.4142 10.25 20.75 10.5858 20.75 11C20.75 11.4142 20.4142 11.75 20 11.75H12C11.5858 11.75 11.25 11.4142 11.25 11C11.25 10.5858 11.5858 10.25 12 10.25H20Z" fill="currentColor"/>
<path d="M20 5.25C20.4142 5.25 20.75 5.58579 20.75 6C20.75 6.41421 20.4142 6.75 20 6.75H12C11.5858 6.75 11.25 6.41421 11.25 6C11.25 5.58579 11.5858 5.25 12 5.25H20Z" fill="currentColor"/>
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
