// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cloudy-moon` icon in the broken style.
class CloudyMoonBrokenIcon extends StatelessWidget {
  /// Creates the `cloudy-moon` icon in the broken style.
  const CloudyMoonBrokenIcon({
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
    name: 'cloudy-moon',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15.5 15.0004C17.8615 15.0004 19.9289 13.741 21.0672 11.8572C21.3065 11.4612 22 11.5377 22 12.0004C22 15.7018 19.989 18.9335 17 20.6626" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 8.5C9 6.13845 10.2594 4.07105 12.1432 2.93276C12.5392 2.69347 12.4627 2 12 2C10.1786 2 8.47087 2.48697 7 3.33782" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.4578 15C2.16035 14.053 2 13.0452 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.0476 15.142C10.4349 15.0119 10.8516 14.9412 11.2857 14.9412C11.7113 14.9412 12.1201 15.0092 12.5008 15.1344M6.33333 17.1516C6.03343 16.9609 5.69238 16.824 5.3255 16.7555C5.15087 16.723 4.97039 16.7059 4.78571 16.7059C3.24721 16.7059 2 17.891 2 19.3529C2 20.8149 3.24721 22 4.78571 22H11.2857C13.3371 22 15 20.4198 15 18.4706C15 16.9257 13.9554 15.6126 12.5008 15.1344M5.3255 16.7555C5.17659 16.3736 5.09524 15.9605 5.09524 15.5294C5.09524 13.5802 6.75818 12 8.80952 12C10.7203 12 12.2941 13.3711 12.5008 15.1344" stroke="currentColor" stroke-linecap="round"/>''',
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
