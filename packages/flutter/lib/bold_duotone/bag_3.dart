// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bag-3` icon in the boldDuotone style.
class Bag3BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bag-3` icon in the boldDuotone style.
  const Bag3BoldDuotoneIcon({
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
    name: 'bag-3',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.0004 9.24996C11.0219 9.24996 10.1875 8.62493 9.87823 7.75003C9.7402 7.35949 9.31171 7.1548 8.92117 7.29283C8.53063 7.43087 8.32594 7.85936 8.46397 8.24989C8.97841 9.70537 10.3665 10.75 12.0004 10.75C13.6343 10.75 15.0224 9.70537 15.5368 8.24989C15.6749 7.85936 15.4702 7.43087 15.0796 7.29283C14.6891 7.1548 14.2606 7.35949 14.1226 7.75003C13.8133 8.62493 12.9789 9.24996 12.0004 9.24996Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.57434 4.69147C4.74117 5.38295 4.52171 6.55339 4.0828 8.89427L3.3328 12.8943C2.7156 16.186 2.40701 17.8318 3.30672 18.9159C4.20644 20 5.88097 20 9.23003 20H14.7709C18.12 20 19.7945 20 20.6942 18.9159C21.5939 17.8318 21.2853 16.186 20.6681 12.8943L19.9181 8.89427C19.4792 6.55339 19.2598 5.38295 18.4266 4.69147C17.5934 4 16.4026 4 14.0209 4H9.98003C7.59835 4 6.40752 4 5.57434 4.69147Z" fill="currentColor"/>''',
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
