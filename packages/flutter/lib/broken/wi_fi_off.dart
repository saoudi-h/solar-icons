// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-off` icon in the broken style.
class WiFiOffBrokenIcon extends StatelessWidget {
  /// Creates the `wi-fi-off` icon in the broken style.
  const WiFiOffBrokenIcon({
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
    name: 'wi-fi-off',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 2L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.9587 14.5083C13.829 14.7024 14.6583 15.164 15.3336 15.8929" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.762 10.7051C17.442 11.1352 18.0829 11.6651 18.6663 12.2949" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 8.697C2.78923 7.84513 3.64855 7.11499 4.5579 6.50659" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.53662 4.68851C11.7523 3.81543 15.1968 4.17863 18.222 5.77811" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.3215 7.14551C20.9086 7.60771 21.47 8.12479 21.9999 8.69674" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 2C20.7406 3.25937 19.4813 4.51874 18.2219 5.77811C16.9354 7.06458 15.6489 8.35106 14.3625 9.63753C10.2416 13.7584 6.12082 17.8792 2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.33301 12.295C7.39361 10.0709 10.1707 9.09151 12.8624 9.35689" stroke="currentColor" stroke-linecap="round"/>''',
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
