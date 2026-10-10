// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bag-2` icon in the boldDuotone style.
class Bag2BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bag-2` icon in the boldDuotone style.
  const Bag2BoldDuotoneIcon({
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
    name: 'bag-2',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.26032 10.877C8.3284 10.4685 8.71415 10.1928 9.12262 10.2607C9.53106 10.3288 9.80765 10.7146 9.73981 11.123L8.73981 17.123C8.67173 17.5316 8.28504 17.8082 7.87653 17.7402C7.46797 17.6721 7.19226 17.2855 7.26032 16.877L8.26032 10.877Z" fill="currentColor"/>
<path d="M14.8765 10.2607C15.2851 10.1926 15.6717 10.4684 15.7398 10.877L16.7398 16.877C16.8078 17.2854 16.532 17.672 16.1236 17.7402C15.715 17.8083 15.3284 17.5316 15.2603 17.123L14.2603 11.123C14.1924 10.7146 14.4682 10.3289 14.8765 10.2607Z" fill="currentColor"/>
<path d="M11.9996 1.25C14.0706 1.25 15.7496 2.92893 15.7496 5V6.01465C15.3116 6.00151 14.8156 6.00018 14.2496 6V5C14.2496 3.75736 13.2422 2.75 11.9996 2.75C10.7569 2.75 9.74958 3.75736 9.74958 5V6C9.18355 6.00018 8.68757 6.00149 8.24958 6.01465V5C8.24958 2.92893 9.92851 1.25 11.9996 1.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4.0828 10.8943C4.52171 8.55339 4.74117 7.38295 5.57434 6.69147C6.40752 6 7.59835 6 9.98003 6H14.0209C16.4026 6 17.5934 6 18.4266 6.69147C19.2598 7.38295 19.4792 8.55339 19.9181 10.8943L20.6681 14.8943C21.2853 18.186 21.5939 19.8318 20.6942 20.9159C19.7945 22 18.12 22 14.7709 22H9.23003C5.88097 22 4.20644 22 3.30672 20.9159C2.40701 19.8318 2.7156 18.186 3.3328 14.8943L4.0828 10.8943Z" fill="currentColor"/>''',
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
