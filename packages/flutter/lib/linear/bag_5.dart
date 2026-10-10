// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bag-5` icon in the linear style.
class Bag5LinearIcon extends StatelessWidget {
  /// Creates the `bag-5` icon in the linear style.
  const Bag5LinearIcon({
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
    name: 'bag-5',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3.79424 14.9709C4.33141 17.6567 4.59999 18.9996 5.48746 19.8646C5.65149 20.0244 5.82894 20.1699 6.01786 20.2994C7.04004 21 8.40956 21 11.1486 21H12.8515C15.5906 21 16.9601 21 17.9823 20.2994C18.1712 20.1699 18.3486 20.0244 18.5127 19.8646C19.4001 18.9996 19.6687 17.6567 20.2059 14.9709C20.9771 11.1149 21.3627 9.18686 20.475 7.82067C20.3143 7.5733 20.1267 7.34447 19.9157 7.13836C18.7501 6 16.7839 6 12.8515 6H11.1486C7.21622 6 5.25004 6 4.08447 7.13836C3.87342 7.34447 3.68582 7.5733 3.5251 7.82067C2.63744 9.18686 3.02304 11.1149 3.79424 14.9709Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 6V5C9 3.34315 10.3431 2 12 2C13.6569 2 15 3.34315 15 5V6" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 10H9.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15 10H15.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
