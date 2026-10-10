// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `donut-bitten` icon in the linear style.
class DonutBittenLinearIcon extends StatelessWidget {
  /// Creates the `donut-bitten` icon in the linear style.
  const DonutBittenLinearIcon({
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
    name: 'donut-bitten',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="3" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 7L16 5" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 7L20 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 5L11 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 7L9.13397 7.36603" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 5L6 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.79245 9.14385L6.20722 7.85641" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.05225 13.0295C2.05225 13.0295 4.20075 15 5.9999 15C7.21189 15 8.6152 14.0836 9.39617 13.4912" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.02 14.218C14.4913 14.6333 15.5002 14.9999 16.0002 15.4999L16.1084 15.6025" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.6497 8.9766L16.7161 10.3893" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.6777 10.085L18.9996 11.5629" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.66477 12.6412L6.5 11.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.68293 10.3498L3.60427 8.93781" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.6262 14.7167C21.0858 14.256 20.1858 14.2717 19.4784 14.7949C18.8768 15.2397 18.5853 15.9252 18.6851 16.5211L18.5837 16.6225L18.2492 16.1703C17.6335 15.3377 16.3216 15.2638 15.3191 16.0052C14.3166 16.7466 14.0031 18.0225 14.6188 18.8551L14.8041 19.1056L14.6188 19.2909C14.106 19.1294 13.4713 19.2373 12.9437 19.6275C12.1416 20.2206 12.0071 21.3338 12.4997 21.9999" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12.5 22C12.3457 22.0071 12.156 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 12.9417 21.8698 13.8529 21.6265 14.7168" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
