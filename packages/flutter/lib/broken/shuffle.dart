// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `shuffle` icon in the broken style.
class ShuffleBrokenIcon extends StatelessWidget {
  /// Creates the `shuffle` icon in the broken style.
  const ShuffleBrokenIcon({
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
    name: 'shuffle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 17H5.60286M22 7H18.3971C16.7379 7 15.9082 7 15.2205 7.3894C14.5327 7.7788 14.1059 8.49021 13.2522 9.91303L10.7478 14.087C10.0958 15.1737 9.69278 15.8454 9.23234 16.2756M20 5L22 7L20 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 7H6.66762C7.28299 7 7.59068 7 7.8746 7.05526C8.51417 7.17975 9.09582 7.50908 9.53163 7.99346C9.72509 8.20848 9.88339 8.47232 10.2 9M22 17H17.3324C16.717 17 16.4093 17 16.1254 16.9447C15.4858 16.8202 14.9042 16.4909 14.4684 16.0065C14.2749 15.7915 14.1166 15.5277 13.8 15M20 19L22 17L20 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
