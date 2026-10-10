// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-off` icon in the lineDuotone style.
class WiFiOffLineDuotoneIcon extends StatelessWidget {
  /// Creates the `wi-fi-off` icon in the lineDuotone style.
  const WiFiOffLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 2L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 2C20.7406 3.25937 19.4813 4.51874 18.2219 5.77811C16.9354 7.06458 15.6489 8.35106 14.3625 9.63753C10.2416 13.7584 6.12082 17.8792 2 22" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.959 14.5083C13.8293 14.7024 14.6585 15.164 15.3339 15.8929" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M5.33301 12.295C7.78006 9.65377 11.2376 8.76794 14.3625 9.63754" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M16.7617 10.7051C17.4418 11.1352 18.0826 11.6651 18.666 12.2949" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M2 8.69694C6.38843 3.96024 12.9434 2.98729 18.2219 5.77811" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20.3213 7.14551C20.9083 7.60771 21.4698 8.12479 21.9997 8.69674" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
