// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ufo-2` icon in the linear style.
class Ufo2LinearIcon extends StatelessWidget {
  /// Creates the `ufo-2` icon in the linear style.
  const Ufo2LinearIcon({
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
    name: 'ufo-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M16.9716 7.20763L17 7.21142C19.989 7.93306 22 9.28187 22 10.8267C22 13.1317 17.5228 15.0003 12 15.0003C6.47715 15.0003 2 13.1317 2 10.8267C2 9.28187 4.01099 7.93306 7 7.21142L7.02863 7.20605" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 7.72876C7 5.11714 9.11714 3 11.7288 3H12.2712C14.8829 3 17 5.11714 17 7.72876C17 7.90601 16.9458 8.07918 16.8003 8.18039C16.3862 8.4684 15.1898 9 12 9C8.81016 9 7.6138 8.4684 7.19972 8.18039C7.0542 8.07918 7 7.90601 7 7.72876Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 21V18" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 20V17" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 20V17" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 11.0059H17.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11.9878 12H11.9879" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6.98828 11.001H6.98838" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
