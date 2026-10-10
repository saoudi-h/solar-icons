// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `calendar` icon in the broken style.
class CalendarBrokenIcon extends StatelessWidget {
  /// Creates the `calendar` icon in the broken style.
  const CalendarBrokenIcon({
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
    name: 'calendar',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M14 22H10C6.22876 22 4.34315 22 3.17157 20.8284C2 19.6569 2 17.7712 2 14V12C2 8.22876 2 6.34315 3.17157 5.17157C4.34315 4 6.22876 4 10 4H14C17.7712 4 19.6569 4 20.8284 5.17157C22 6.34315 22 8.22876 22 12V14C22 17.7712 22 19.6569 20.8284 20.8284C20.1752 21.4816 19.3001 21.7706 18 21.8985" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 4V2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 4V2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.5 9H16.625H10.75M2 9H5.875" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 13H17.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 13H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 13H7.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M17 17.0234H17.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 17.0234H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 17.0234H7.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
