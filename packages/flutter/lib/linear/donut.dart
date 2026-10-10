// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `donut` icon in the linear style.
class DonutLinearIcon extends StatelessWidget {
  /// Creates the `donut` icon in the linear style.
  const DonutLinearIcon({
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
    name: 'donut',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="12" r="3" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.05371 13.0422C2.05371 13.0422 4.20098 15.0002 6.00012 15.0002C7.21212 15.0002 8.62062 14.0928 9.4016 13.5004" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.0073 14.2295C14.4786 14.6448 15.0873 15 15.8052 15C17.4946 15 17.4946 13 19.1841 13C20.2616 13 21.1101 13.8136 21.5833 14.4029L21.6795 14.5209" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 7L16 5" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 7L20 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 5L11 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 7L9.13397 7.36603" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.6497 8.9766L16.7161 10.3893" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.6777 10.085L18.9996 11.5629" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 5L6 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.79245 9.14385L6.20722 7.85641" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.66477 12.6415L6.5 11.5002" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.68293 10.3496L3.60427 8.93757" stroke="currentColor" stroke-linecap="round"/>''',
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
