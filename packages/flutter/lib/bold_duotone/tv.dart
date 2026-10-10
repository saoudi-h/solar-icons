// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tv` icon in the boldDuotone style.
class TvBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `tv` icon in the boldDuotone style.
  const TvBoldDuotoneIcon({
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
    name: 'tv',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16 6V22H8C5.17157 22 3.75759 21.9998 2.87891 21.1211C2.00023 20.2424 2 18.8284 2 16V12C2 9.17157 2.00023 7.75759 2.87891 6.87891C3.75759 6.00023 5.17157 6 8 6H16Z" fill="currentColor"/>
<path d="M19 15C19.5523 15 20 15.4477 20 16C20 16.5523 19.5523 17 19 17C18.4477 17 18 16.5523 18 16C18 15.4477 18.4477 15 19 15Z" fill="currentColor"/>
<path d="M19 11C19.5523 11 20 11.4477 20 12C20 12.5523 19.5523 13 19 13C18.4477 13 18 12.5523 18 12C18 11.4477 18.4477 11 19 11Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M16.5 5.99996C18.9982 6.00301 20.2958 6.05357 21.1211 6.87887C21.9996 7.75756 22 9.17164 22 12V16C22 18.8283 21.9997 20.2424 21.1211 21.1211C20.2958 21.9463 18.9981 21.9969 16.5 22H16V5.99996H16.5Z" fill="currentColor"/>
<path d="M14.4306 2.51168C14.7002 2.19734 15.1738 2.16111 15.4882 2.43063C15.8026 2.70022 15.8388 3.1738 15.5693 3.48824L13.416 5.99996H10.5839L8.43063 3.48824C8.16111 3.1738 8.19734 2.70022 8.51168 2.43063C8.82612 2.16111 9.29971 2.19735 9.5693 2.51168L12 5.34762L14.4306 2.51168Z" fill="currentColor"/>
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
