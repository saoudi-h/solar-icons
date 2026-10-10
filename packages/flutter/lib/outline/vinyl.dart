// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `vinyl` icon in the outline style.
class VinylOutlineIcon extends StatelessWidget {
  /// Creates the `vinyl` icon in the outline style.
  const VinylOutlineIcon({
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
    name: 'vinyl',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.7463 1.97576C11.7873 2.38795 11.4863 2.75527 11.0741 2.79619C6.40058 3.26021 2.75 7.20449 2.75 12.0005C2.75 17.1091 6.89137 21.2505 12 21.2505C16.796 21.2505 20.7403 17.5999 21.2043 12.9264C21.2452 12.5142 21.6125 12.2132 22.0247 12.2542C22.4369 12.2951 22.7379 12.6624 22.697 13.0746C22.1575 18.5077 17.5747 22.7505 12 22.7505C6.06294 22.7505 1.25 17.9375 1.25 12.0005C1.25 6.42578 5.49278 1.84296 10.9259 1.30353C11.3381 1.26261 11.7054 1.56357 11.7463 1.97576ZM14.5562 1.85342C14.7487 1.71212 14.9969 1.67092 15.2247 1.74247C18.5688 2.79278 21.2074 5.43139 22.2577 8.77547C22.3819 9.17065 22.1621 9.59162 21.7669 9.71574C21.3718 9.83986 20.9508 9.62012 20.8267 9.22494C20.0281 6.68232 18.1597 4.61178 15.75 3.54171V12.0005C15.75 14.0716 14.0711 15.7505 12 15.7505C9.92893 15.7505 8.25 14.0716 8.25 12.0005C8.25 9.92942 9.92893 8.25048 12 8.25048C12.8442 8.25048 13.6233 8.52944 14.25 9.00021V2.458C14.25 2.21923 14.3637 1.99472 14.5562 1.85342ZM14.25 12.0005C14.25 10.7578 13.2426 9.75049 12 9.75049C10.7574 9.75049 9.75 10.7578 9.75 12.0005C9.75 13.2431 10.7574 14.2505 12 14.2505C13.2426 14.2505 14.25 13.2431 14.25 12.0005Z" fill="currentColor"/>''',
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
