// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cloud-sun-2` icon in the linear style.
class CloudSun2LinearIcon extends StatelessWidget {
  /// Creates the `cloud-sun-2` icon in the linear style.
  const CloudSun2LinearIcon({
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
    name: 'cloud-sun-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14.381 11.0272C14.9767 10.8191 15.6178 10.7059 16.2857 10.7059C16.9404 10.7059 17.5693 10.8147 18.1551 11.015M8.66667 14.2426C8.20528 13.9374 7.68058 13.7184 7.11616 13.6089C6.8475 13.5567 6.56983 13.5294 6.28571 13.5294C3.91878 13.5294 2 15.4256 2 17.7647C2 20.1038 3.91878 22 6.28571 22H16.2857C19.4416 22 22 19.4717 22 16.3529C22 13.8811 20.393 11.7802 18.1551 11.015M7.11616 13.6089C6.88706 12.9978 6.7619 12.3369 6.7619 11.6471C6.7619 8.52827 9.32028 6 12.4762 6C15.4159 6 17.8371 8.19371 18.1551 11.015" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 4.5C6.067 4.5 4.5 6.067 4.5 8C4.5 9.3962 5.31753 10.6015 6.5 11.1632M8 4.5C8.74362 4.5 9.43308 4.73191 10 5.12734M8 4.5C7.25638 4.5 6.56692 4.73191 6 5.12734M8 4.5C8.95365 4.5 9.81822 4.88141 10.4495 5.5M8 4.5C7.04635 4.5 6.18178 4.88141 5.55051 5.5M8 4.5C9.27316 4.5 10.3876 5.17979 11 6.19621" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.5 2V2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.5 7.5L2 7.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.3887 3.61133L11.1726 3.82739" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.82715 11.1729L3.61109 11.3889" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.82715 3.82715L3.61109 3.61109" stroke="currentColor" stroke-linecap="round"/>''',
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
