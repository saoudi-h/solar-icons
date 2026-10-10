// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `widget-2` icon in the boldDuotone style.
class Widget2BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `widget-2` icon in the boldDuotone style.
  const Widget2BoldDuotoneIcon({
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
    name: 'widget-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M6.5 13C8.62132 13 9.68181 13.0002 10.3408 13.6592C10.9998 14.3182 11 15.3787 11 17.5C11 19.6213 10.9998 20.6818 10.3408 21.3408C9.68181 21.9998 8.62132 22 6.5 22C4.37868 22 3.31819 21.9998 2.65918 21.3408C2.00017 20.6818 2 19.6213 2 17.5C2 15.3787 2.00017 14.3182 2.65918 13.6592C3.31819 13.0002 4.37868 13 6.5 13Z" fill="currentColor"/>
<path d="M6.63379 2C9.19304 2 11.2684 4.07458 11.2686 6.63379C11.2686 9.19316 9.19316 11.2686 6.63379 11.2686C4.07458 11.2684 2 9.19304 2 6.63379C2.00019 4.0747 4.0747 2.00019 6.63379 2Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M17.3662 12.7314C19.9256 12.7314 22.001 14.8068 22.001 17.3662C22.0008 19.9254 19.9255 22 17.3662 22C14.8071 21.9998 12.7326 19.9253 12.7324 17.3662C12.7324 14.807 14.807 12.7316 17.3662 12.7314Z" fill="currentColor"/>
<path d="M17.5 2C19.6213 2 20.6818 2.00017 21.3408 2.65918C21.9998 3.31819 22 4.37868 22 6.5C22 8.62132 21.9998 9.68181 21.3408 10.3408C20.6818 10.9998 19.6213 11 17.5 11C15.3787 11 14.3182 10.9998 13.6592 10.3408C13.0002 9.68181 13 8.62132 13 6.5C13 4.37868 13.0002 3.31819 13.6592 2.65918C14.3182 2.00017 15.3787 2 17.5 2Z" fill="currentColor"/>
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
