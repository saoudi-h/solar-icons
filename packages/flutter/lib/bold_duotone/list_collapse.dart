// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-collapse` icon in the boldDuotone style.
class ListCollapseBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `list-collapse` icon in the boldDuotone style.
  const ListCollapseBoldDuotoneIcon({
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
    name: 'list-collapse',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M4.79839 13.4305C5.11288 13.1613 5.58653 13.1972 5.85601 13.5116L7.56987 15.5116C7.81037 15.7924 7.81037 16.2074 7.56987 16.4882L5.85601 18.4882C5.58654 18.8025 5.11288 18.8385 4.79839 18.5692C4.48393 18.2997 4.4469 17.8261 4.71636 17.5116L6.01323 15.9999L4.71636 14.4882C4.4469 14.1737 4.48393 13.7001 4.79839 13.4305Z" fill="currentColor"/>
<path d="M4.79839 5.43053C5.11288 5.16128 5.58653 5.1972 5.85601 5.51159L7.56987 7.51159C7.81037 7.79238 7.81037 8.20736 7.56987 8.48815L5.85601 10.4882C5.58654 10.8025 5.11288 10.8385 4.79839 10.5692C4.48393 10.2997 4.4469 9.82608 4.71636 9.51159L6.01323 7.99987L4.71636 6.48815C4.4469 6.17366 4.48393 5.70007 4.79839 5.43053Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M21 17.25C21.4142 17.25 21.75 17.5858 21.75 18C21.75 18.4142 21.4142 18.75 21 18.75H13C12.5858 18.75 12.25 18.4142 12.25 18C12.25 17.5858 12.5858 17.25 13 17.25H21Z" fill="currentColor"/>
<path d="M21 13.25C21.4142 13.25 21.75 13.5858 21.75 14C21.75 14.4142 21.4142 14.75 21 14.75H13C12.5858 14.75 12.25 14.4142 12.25 14C12.25 13.5858 12.5858 13.25 13 13.25H21Z" fill="currentColor"/>
<path d="M21 9.25C21.4142 9.25 21.75 9.58579 21.75 10C21.75 10.4142 21.4142 10.75 21 10.75H13C12.5858 10.75 12.25 10.4142 12.25 10C12.25 9.58579 12.5858 9.25 13 9.25H21Z" fill="currentColor"/>
<path d="M21 5.25C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H13C12.5858 6.75 12.25 6.41421 12.25 6C12.25 5.58579 12.5858 5.25 13 5.25H21Z" fill="currentColor"/>
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
