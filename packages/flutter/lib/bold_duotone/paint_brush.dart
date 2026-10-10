// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `paint-brush` icon in the boldDuotone style.
class PaintBrushBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `paint-brush` icon in the boldDuotone style.
  const PaintBrushBoldDuotoneIcon({
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
    name: 'paint-brush',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9.25092 10.8469C10.1906 12.5395 11.6072 13.9308 13.3192 14.8393C11.9322 15.9284 10.5808 16.7652 9.493 17.1635C9.15967 16.9968 7.80684 15.9047 7.00684 14.7047C7.33685 13.555 8.09576 12.3917 9.25092 10.8469Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.53105 17.7963C3.63645 14.845 5.84025 14.7047 7.00692 14.7047C7.33693 13.555 8.09584 12.3917 9.25099 10.8469C9.91963 9.95272 10.7078 9.02964 11.5943 8.12139C15.2622 4.36321 19.2217 2.279 20.4381 3.46616C21.6545 4.65333 19.6671 8.66231 15.9991 12.4205C15.1564 13.284 14.2595 14.084 13.3192 14.8393C11.9323 15.9284 10.5809 16.7652 9.49308 17.1635C9.8798 22.1908 2.49963 21.4879 2.27396 20.5986C2.04828 19.7094 3.47677 19.3164 3.53105 17.7963Z" fill="currentColor"/>''',
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
