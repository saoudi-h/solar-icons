// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `umbrella` icon in the boldDuotone style.
class UmbrellaBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `umbrella` icon in the boldDuotone style.
  const UmbrellaBoldDuotoneIcon({
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
    name: 'umbrella',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 20C12.75 21.5188 11.5188 22.75 10 22.75C8.48122 22.75 7.25 21.5188 7.25 20V19C7.25 18.5858 7.58579 18.25 8 18.25C8.41421 18.25 8.75 18.5858 8.75 19V20C8.75 20.6904 9.30964 21.25 10 21.25C10.6904 21.25 11.25 20.6904 11.25 20V12H12.75V20Z" fill="currentColor"/>
<path d="M12.4766 2C13.0993 2.00002 13.7084 2.05968 14.2979 2.17383C14.4785 2.33519 14.6466 2.51292 14.8037 2.70117C15.4922 3.52633 16.0064 4.61793 16.3945 5.7373C17.1729 7.98179 17.5189 10.5512 17.6602 11.9229L17.6689 12H16.1602C16.0175 10.6457 15.6834 8.26687 14.9766 6.22852C14.6154 5.18719 14.1747 4.28817 13.6523 3.66211C13.1385 3.04627 12.5974 2.75 12 2.75C11.4027 2.75009 10.8624 3.04637 10.3486 3.66211C9.82622 4.28821 9.38463 5.18701 9.02344 6.22852C8.31658 8.26689 7.98247 10.6457 7.83984 12H6.33203L6.33984 11.9229C6.48109 10.5512 6.8281 7.98183 7.60645 5.7373C7.99458 4.6181 8.50794 3.52626 9.19629 2.70117C9.35343 2.51284 9.52237 2.33525 9.70312 2.17383C10.2923 2.05976 10.9009 2.00003 11.5234 2H12.4766Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M21.5238 12H12H2.47619C2.2132 12 2 11.7868 2 11.5238C2 6.26396 6.26395 2 11.5238 2H12.4762C17.736 2 22 6.26396 22 11.5238C22 11.7868 21.7868 12 21.5238 12Z" fill="currentColor"/>''',
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
