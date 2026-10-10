// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `video-frame-2` icon in the broken style.
class VideoFrame2BrokenIcon extends StatelessWidget {
  /// Creates the `video-frame-2` icon in the broken style.
  const VideoFrame2BrokenIcon({
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
    name: 'video-frame-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 14.5C2 15.2641 2 15.425 2.01925 16M2.01925 16C2.07125 17.5534 2.26375 18.48 2.97631 19.1213C3.76222 19.8286 4.93369 19.9666 7 19.9935M2.01925 16L7 16M2.01925 16H2M2.00193 7C2 7.31221 2 7.64496 2 8V10.5M2.00193 7C2.01538 4.82497 2.12255 3.64706 2.97631 2.87868C3.76222 2.17137 4.9337 2.03342 7 2.00652M12 7L7 7L2.00193 7M2.00193 7H2M7 2.00652C7.50062 2 8.05376 2 8.66667 2H11C11.5523 2 12 2.44772 12 3L12 7M7 2.00652V2M7 2.00652V7M12 7V16M7 19.9935C7.50062 20 8.05376 20 8.66667 20H12V16M7 19.9935L7 16M7 19.9935V20M12 16L7 16M22 14.5C22 15.2641 22 17.425 21.9808 18M21.9808 18C21.9287 19.5534 21.7363 20.48 21.0237 21.1213C20.2378 21.8286 19.0663 21.9666 17 21.9935M21.9808 18H17M21.9808 18H22M22 10.5C22 10.145 22 9.31221 21.9981 9M21.9981 9C21.9846 6.82497 21.8775 5.64706 21.0237 4.87868C20.2378 4.17137 19.0663 4.03342 17 4.00652M12 9L17 9L21.9981 9M21.9981 9H22M17 4.00652C16.4994 4 15.9462 4 15.3333 4H12L12 9M17 4.00652V4M17 4.00652V9M12 9V18M17 21.9935C16.4994 22 15.9462 22 15.3333 22H13C12.4477 22 12 21.5523 12 21V18M17 21.9935L17 18M17 21.9935V22M12 18H17" stroke="currentColor" stroke-linecap="round"/>''',
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
