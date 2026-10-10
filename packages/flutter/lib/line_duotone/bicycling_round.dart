// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bicycling-round` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGNpcmNsZSBjeD0iMTQiIGN5PSI0IiByPSIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSI2IiBjeT0iMTgiIHI9IjMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIG9wYWNpdHk9IjAuNSIgY3g9IjE4IiBjeT0iMTgiIHI9IjMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTguNDk5OSA5Ljk5OTk3SDE0LjU4MjJDMTQuMjA1MiA5Ljk5OTk3IDEzLjgzOTMgOS44NzIxMyAxMy41NDQ0IDkuNjM3MzNMMTEuMzg2IDcuOTE5MTZDMTAuMTE5MyA2LjkxMDg0IDguMjUxNjggNy4yNzEwMiA3LjQ1MDgzIDguNjc4MDZDNi42NzU2MiAxMC4wNDAxIDcuMjUxOTIgMTEuNzczNiA4LjY4ODI5IDEyLjQwMDRMMTEuNzc5IDEzLjc0OUMxMi43MzEyIDE0LjE2NDYgMTMuMTY5NSAxNS4yNzA4IDEyLjc2MDMgMTYuMjI1OEwxMS45OTk5IDE4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class BicyclingRoundLineDuotoneIcon extends StatelessWidget {
  /// Creates the `bicycling-round` icon in the lineDuotone style.
  const BicyclingRoundLineDuotoneIcon({
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
    name: 'bicycling-round',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="14" cy="4" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.4999 9.99997H14.5822C14.2052 9.99997 13.8393 9.87213 13.5444 9.63733L11.386 7.91916C10.1193 6.91084 8.25168 7.27102 7.45083 8.67806C6.67562 10.0401 7.25192 11.7736 8.68829 12.4004L11.779 13.749C12.7312 14.1646 13.1695 15.2708 12.7603 16.2258L11.9999 18" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="6" cy="18" r="3" stroke="currentColor" stroke-linecap="round"/>

<circle opacity="0.5" cx="18" cy="18" r="3" stroke="currentColor" stroke-linecap="round"/>''',
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
