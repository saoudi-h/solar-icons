// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `speedometer-low` icon in the lineDuotone style.
class SpeedometerLowLineDuotoneIcon extends StatelessWidget {
  /// Creates the `speedometer-low` icon in the lineDuotone style.
  const SpeedometerLowLineDuotoneIcon({
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
    name: 'speedometer-low',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.7781 14.3635C14.9497 13.1919 14.9497 11.2924 13.7781 10.1209C12.6065 8.94929 10.707 8.94929 9.53545 10.1209C9.0898 10.5665 8.77857 11.4916 8.56396 12.467C8.24305 13.9255 8.08259 14.6548 8.66339 15.2356C9.24419 15.8164 9.97346 15.6559 11.432 15.335C12.4073 15.1204 13.3324 14.8092 13.7781 14.3635Z" stroke="currentColor" stroke-linecap="round"/>''',
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
