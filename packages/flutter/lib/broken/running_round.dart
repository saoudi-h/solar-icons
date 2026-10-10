// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `running-round` icon in the broken style.
class RunningRoundBrokenIcon extends StatelessWidget {
  /// Creates the `running-round` icon in the broken style.
  const RunningRoundBrokenIcon({
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
    name: 'running-round',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="18.5" cy="4.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.4 21.9998V21.1948C14.4 21.117 14.4 21.0781 14.3996 21.0411C14.377 18.9018 13.3773 16.8903 11.6857 15.5804C11.6565 15.5578 11.6255 15.5343 11.5635 15.4873C11.5235 15.457 11.5035 15.4419 11.4877 15.4294C10.5309 14.6738 10.467 13.2453 11.3524 12.4073C11.367 12.3935 11.3857 12.3765 11.4227 12.3428L12.4628 11.3973C14.0898 9.91821 13.5945 7.24444 11.5457 6.4462C10.8122 6.16044 9.99522 6.17841 9.27504 6.49613L8.75335 6.72629M5.43897 8.61147L4 9.63619" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 17L8.74064 17.3112C7.32089 19.0149 5.21773 20 3 20" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 12C17.3131 12.3283 18.6869 12.3283 20 12" stroke="currentColor" stroke-linecap="round"/>''',
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
