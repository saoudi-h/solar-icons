// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `speedometer-max` icon in the lineDuotone style.
class SpeedometerMaxLineDuotoneIcon extends StatelessWidget {
  /// Creates the `speedometer-max` icon in the lineDuotone style.
  const SpeedometerMaxLineDuotoneIcon({
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
    name: 'speedometer-max',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.1214 14.3635C8.94978 13.1919 8.94978 11.2924 10.1214 10.1209C11.2929 8.94929 13.1924 8.94929 14.364 10.1209C14.8096 10.5665 15.1209 11.4916 15.3355 12.467C15.6564 13.9255 15.8169 14.6548 15.2361 15.2356C14.6553 15.8164 13.926 15.6559 12.4675 15.335C11.4921 15.1204 10.567 14.8092 10.1214 14.3635Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M19 19L17.5 17.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M19 5L17.5 6.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5 19L6.5 17.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5 5L6.5 6.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M2 12H4" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M19.9998 12L21.9998 12" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 4.00021L12 2.00021" stroke="currentColor" stroke-linecap="round"/>''',
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
