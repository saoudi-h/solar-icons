// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `container` icon in the boldDuotone style.
class ContainerBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `container` icon in the boldDuotone style.
  const ContainerBoldDuotoneIcon({
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
    name: 'container',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.0488 6.49023C21.2473 6.67326 21.4072 6.86543 21.5371 7.08594C21.6624 7.29865 21.7526 7.52577 21.8193 7.78223L10.5439 13.3818V20.7725C10.2811 20.8536 10.0415 20.8975 9.79492 20.8975C9.54789 20.8975 9.30752 20.8539 9.04395 20.7725V13.3867L2.22461 10.0771C2.29126 9.82057 2.38251 9.59365 2.50781 9.38086C2.6378 9.16015 2.79741 8.96734 2.99609 8.78418L9.78906 12.082L21.0488 6.49023Z" fill="currentColor"/>
<path d="M12.8379 12.9189C13.252 12.9189 13.5878 13.2548 13.5879 13.6689V17.5576C13.5878 17.9718 13.2521 18.3076 12.8379 18.3076C12.4237 18.3076 12.088 17.9718 12.0879 17.5576V13.6689C12.088 13.2548 12.4238 12.9189 12.8379 12.9189Z" fill="currentColor"/>
<path d="M15.7988 11.4453C16.213 11.4453 16.5488 11.7811 16.5488 12.1953V16.084C16.5485 16.4979 16.2128 16.834 15.7988 16.834C15.3848 16.834 15.0492 16.4979 15.0488 16.084V12.1953C15.0488 11.7811 15.3846 11.4453 15.7988 11.4453Z" fill="currentColor"/>
<path d="M18.9453 9.86719C19.3594 9.86719 19.6952 10.2031 19.6953 10.6172V14.5059C19.6953 14.92 19.3595 15.2559 18.9453 15.2559C18.5311 15.2559 18.1954 14.92 18.1953 14.5059V10.6172C18.1954 10.2031 18.5312 9.86719 18.9453 9.86719Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M14.251 3.10254C14.9827 3.10257 15.663 3.45991 17.0234 4.17383L18.5732 4.9873C20.2404 5.86221 21.0741 6.29994 21.5371 7.08594C22.0001 7.87214 22.001 8.85097 22.001 10.8076V10.8984C22.001 12.8548 22 13.833 21.5371 14.6191C21.0743 15.4049 20.2413 15.8425 18.5752 16.7168L18.5732 16.7178L14.1172 19.0127L12.5674 19.8262C11.2069 20.5401 10.5267 20.8974 9.79492 20.8975C9.06315 20.8975 8.38202 20.5402 7.02148 19.8262L5.47168 19.0127C3.80444 18.1378 2.97074 17.7002 2.50781 16.9141C2.04491 16.1279 2.04492 15.1497 2.04492 13.1934V13.1025C2.04492 11.1459 2.04485 10.1671 2.50781 9.38086C2.97077 8.5948 3.8045 8.15712 5.47168 7.28223L7.02148 6.46875L11.4785 4.17383C12.8389 3.45993 13.5192 3.10254 14.251 3.10254Z" fill="currentColor"/>''',
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
