// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wineglass-triangle` icon in the boldDuotone style.
class WineglassTriangleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `wineglass-triangle` icon in the boldDuotone style.
  const WineglassTriangleBoldDuotoneIcon({
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
    name: 'wineglass-triangle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.2441 20.25C16.6581 20.2503 16.9941 20.5859 16.9941 21C16.9941 21.4141 16.6581 21.7497 16.2441 21.75H7.75586C7.34165 21.75 7.00586 21.4142 7.00586 21C7.00586 20.5858 7.34165 20.25 7.75586 20.25H16.2441Z" fill="currentColor"/>
<path d="M16.4707 10L12.7148 13.8408C12.3226 14.2415 11.6773 14.2416 11.2852 13.8408L7.5293 10H16.4707Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M11.2498 13.8047L3.48317 5.86426C2.43695 4.79452 3.20008 3 4.70094 3H19.2986C20.7995 3 21.5626 4.79452 20.5164 5.86426L12.7498 13.8047V20.25H11.2498V13.8047Z" fill="currentColor"/>''',
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
