// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `battery-charge-minimalistic` icon in the boldDuotone style.
class BatteryChargeMinimalisticBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `battery-charge-minimalistic` icon in the boldDuotone style.
  const BatteryChargeMinimalisticBoldDuotoneIcon({
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
    name: 'battery-charge-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.9235 8.51961C11.1887 8.20158 11.662 8.15879 11.9802 8.4239C12.2982 8.68911 12.341 9.1624 12.0759 9.48055L10.6013 11.2501H12.4997C12.7907 11.2501 13.0559 11.4182 13.1794 11.6817C13.3028 11.9453 13.2622 12.257 13.0759 12.4805L10.5759 15.4805C10.3107 15.7986 9.83737 15.8414 9.51922 15.5762C9.2012 15.311 9.1584 14.8377 9.42352 14.5196L10.8981 12.7501H8.99969C8.70881 12.7501 8.44449 12.5818 8.32098 12.3184C8.19754 12.0549 8.23722 11.7432 8.42352 11.5196L10.9235 8.51961Z" fill="currentColor"/>
<path d="M21.9997 9.25008C22.4139 9.25008 22.7497 9.58586 22.7497 10.0001V14.0001C22.7497 14.4143 22.4139 14.7501 21.9997 14.7501C21.5855 14.7501 21.2497 14.4143 21.2497 14.0001V10.0001C21.2497 9.58586 21.5855 9.25008 21.9997 9.25008Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.17157 5.17157C2 6.34315 2 8.22876 2 12C2 15.7712 2 17.6569 3.17157 18.8284C4.34315 20 6.22876 20 10 20H11.5C15.2712 20 17.1569 20 18.3284 18.8284C19.5 17.6569 19.5 15.7712 19.5 12C19.5 8.22876 19.5 6.34315 18.3284 5.17157C17.1569 4 15.2712 4 11.5 4H10C6.22876 4 4.34315 4 3.17157 5.17157Z" fill="currentColor"/>''',
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
