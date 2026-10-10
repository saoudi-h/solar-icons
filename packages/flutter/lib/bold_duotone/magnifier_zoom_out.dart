// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `magnifier-zoom-out` icon in the boldDuotone style.
class MagnifierZoomOutBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `magnifier-zoom-out` icon in the boldDuotone style.
  const MagnifierZoomOutBoldDuotoneIcon({
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
    name: 'magnifier-zoom-out',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.7881 20.7656C22.0704 21.0479 22.0704 21.5058 21.7881 21.7881C21.5058 22.0704 21.0479 22.0704 20.7656 21.7881L17.0996 18.1221C17.4666 17.8086 17.8086 17.4666 18.1221 17.0996L21.7881 20.7656Z" fill="currentColor"/>
<path d="M13.5654 10.4336C13.9646 10.4336 14.288 10.7571 14.2881 11.1562C14.2881 11.5555 13.9647 11.8789 13.5654 11.8789H8.74609C8.34696 11.8788 8.02344 11.5554 8.02344 11.1562C8.02356 10.7572 8.34704 10.4337 8.74609 10.4336H13.5654Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M11.1566 20.3133C16.2137 20.3133 20.3133 16.2137 20.3133 11.1566C20.3133 6.09956 16.2137 2 11.1566 2C6.09956 2 2 6.09956 2 11.1566C2 16.2137 6.09956 20.3133 11.1566 20.3133Z" fill="currentColor"/>
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
