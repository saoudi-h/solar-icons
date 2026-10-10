// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sun-fog` icon in the lineDuotone style.
class SunFogLineDuotoneIcon extends StatelessWidget {
  /// Creates the `sun-fog` icon in the lineDuotone style.
  const SunFogLineDuotoneIcon({
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
    name: 'sun-fog',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 22H16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 16H22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M5 19H19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M12 6C8.68629 6 6 8.68629 6 12C6 13.5217 6.56645 14.911 7.5 15.9687H16.5C17.4335 14.911 18 13.5217 18 12C18 8.68629 15.3137 6 12 6Z" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 2V3" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M22 12L21 12" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M3 12L2 12" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M19.0708 4.92969L18.678 5.32252" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5.32178 5.32227L4.92894 4.92943" stroke="currentColor" stroke-linecap="round"/>''',
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
