// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ufo` icon in the linear style.
class UfoLinearIcon extends StatelessWidget {
  /// Creates the `ufo` icon in the linear style.
  const UfoLinearIcon({
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
    name: 'ufo',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M7 8.72876C7 6.11714 9.11714 4 11.7288 4H12.2712C14.8829 4 17 6.11714 17 8.72876C17 8.90601 16.9458 9.07918 16.8003 9.18039C16.3862 9.4684 15.1898 10 12 10C8.81016 10 7.6138 9.4684 7.19972 9.18039C7.0542 9.07918 7 8.90601 7 8.72876Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 16V19" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.50036 15.5L4.5 17.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.4996 15.5L19.5 17.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 12.0059H17.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11.9878 13H11.9879" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6.98828 12.001H6.98838" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.9716 8.20763L17 8.21142C19.989 8.93306 22 10.2819 22 11.8267C22 14.1317 17.5228 16.0003 12 16.0003C6.47715 16.0003 2 14.1317 2 11.8267C2 10.2819 4.01099 8.93306 7 8.21142L7.02863 8.20605" stroke="currentColor" stroke-linecap="round"/>''',
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
