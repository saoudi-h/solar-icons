// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ghost-smile` icon in the bold style.
class GhostSmileBoldIcon extends StatelessWidget {
  /// Creates the `ghost-smile` icon in the bold style.
  const GhostSmileBoldIcon({
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
    name: 'ghost-smile',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M22 12V19.2058C22 20.4896 20.649 21.3245 19.5008 20.7504C18.5727 20.2864 17.4672 20.3552 16.6039 20.9308C15.6326 21.5782 14.3674 21.5782 13.3961 20.9308L13.0435 20.6957C12.4116 20.2744 11.5884 20.2744 10.9565 20.6957L10.6039 20.9308C9.63264 21.5782 8.36736 21.5782 7.39614 20.9308C6.5328 20.3552 5.42726 20.2864 4.4992 20.7504C3.35098 21.3245 2 20.4896 2 19.2058V12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12ZM9.44661 14.3975C9.11385 14.1508 8.64413 14.2206 8.39747 14.5534C8.15082 14.8862 8.22062 15.3559 8.55339 15.6025C9.5258 16.3233 10.715 16.75 12 16.75C13.285 16.75 14.4742 16.3233 15.4466 15.6025C15.7794 15.3559 15.8492 14.8862 15.6025 14.5534C15.3559 14.2206 14.8862 14.1508 14.5534 14.3975C13.825 14.9373 12.9459 15.25 12 15.25C11.0541 15.25 10.175 14.9373 9.44661 14.3975ZM16 9.5C16 10.3284 15.5523 11 15 11C14.4477 11 14 10.3284 14 9.5C14 8.67157 14.4477 8 15 8C15.5523 8 16 8.67157 16 9.5ZM9 11C9.55228 11 10 10.3284 10 9.5C10 8.67157 9.55228 8 9 8C8.44772 8 8 8.67157 8 9.5C8 10.3284 8.44772 11 9 11Z" fill="currentColor"/>''',
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
