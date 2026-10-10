// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `flash-drive` icon in the broken style.
class FlashDriveBrokenIcon extends StatelessWidget {
  /// Creates the `flash-drive` icon in the broken style.
  const FlashDriveBrokenIcon({
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
    name: 'flash-drive',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M18.2959 12L19.8302 10.441C21.2767 8.97109 22 8.23615 22 7.32289C22 6.40962 21.2767 5.67469 19.8302 4.20481C18.3837 2.73494 17.6604 2 16.7617 2C15.8629 2 15.1396 2.73494 13.6931 4.20481L12 5.92526" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.2274 17.9779C17.3972 15.8081 18.4821 14.7232 18.4821 13.3751C18.4821 12.0269 17.3972 10.942 15.2274 8.77225C13.0576 6.60247 11.9727 5.51758 10.6246 5.51758C9.27648 5.51758 8.19159 6.60247 6.02181 8.77225L5.25467 9.53939C3.08489 11.7092 2 12.7941 2 14.1422C2 15.4903 3.08489 16.5752 5.25467 18.745C7.42446 20.9148 8.50935 21.9997 9.85748 21.9997C10.5782 21.9997 11.2237 21.6896 12 21.0694" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.25464 14.1426L9.85744 18.7454" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.7175 7.40332L18.0104 8.11043" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5962 5.28223L15.8891 5.98933" stroke="currentColor" stroke-linecap="round"/>''',
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
