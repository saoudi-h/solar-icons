// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `shuffle` icon in the lineDuotone style.
class ShuffleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `shuffle` icon in the lineDuotone style.
  const ShuffleLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 17H5.60286C7.26213 17 8.09177 17 8.77953 16.6106C9.46728 16.2212 9.89413 15.5098 10.7478 14.087L13.2522 9.91303C14.1059 8.49021 14.5327 7.7788 15.2205 7.3894C15.9082 7 16.7379 7 18.3971 7H22M20 5L22 7L20 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 7H5.60286C7.26213 7 8.09177 7 8.77953 7.3894C9.46728 7.7788 9.89413 8.49021 10.7478 9.91303L13.2522 14.087C14.1059 15.5098 14.5327 16.2212 15.2205 16.6106C15.9082 17 16.7379 17 18.3971 17H22M20 19L22 17L20 15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
