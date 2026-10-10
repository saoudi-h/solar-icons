// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `usb` icon in the lineDuotone style.
class UsbLineDuotoneIcon extends StatelessWidget {
  /// Creates the `usb` icon in the lineDuotone style.
  const UsbLineDuotoneIcon({
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
    name: 'usb',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="20" r="2" stroke="currentColor" stroke-linecap="round"/>
<circle cx="6" cy="6" r="1" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 5L12 2L10 5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M17 9C17 8.5286 17 8.29289 17.1464 8.14645C17.2929 8 17.5286 8 18 8C18.4714 8 18.7071 8 18.8536 8.14645C19 8.29289 19 8.5286 19 9C19 9.4714 19 9.70711 18.8536 9.85355C18.7071 10 18.4714 10 18 10C17.5286 10 17.2929 10 17.1464 9.85355C17 9.70711 17 9.4714 17 9Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 2V15M12 15V18V17.4415C12 16.5807 12.5509 15.8164 13.3675 15.5442L16.6325 14.4558C17.4491 14.1836 18 13.4193 18 12.5585V10M12 15V14.4415C12 13.5807 11.4491 12.8164 10.6325 12.5442L7.36754 11.4558C6.55086 11.1836 6 10.4193 6 9.55848V7" stroke="currentColor" stroke-linecap="round"/>''',
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
