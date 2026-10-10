// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `skirt` icon in the lineDuotone style.
class SkirtLineDuotoneIcon extends StatelessWidget {
  /// Creates the `skirt` icon in the lineDuotone style.
  const SkirtLineDuotoneIcon({
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
    name: 'skirt',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M18.1624 4V5.5L21.9193 17.9529C22.1353 18.6686 21.9178 19.4379 21.2655 19.8293C19.8429 20.6828 16.8602 22 12 22C7.13982 22 4.15709 20.6828 2.7345 19.8293C2.08222 19.4379 1.86473 18.6686 2.08066 17.9529L5.83756 5.5V4C5.83756 3.05719 5.83756 2.58579 6.13838 2.29289C6.4392 2 6.92337 2 7.8917 2H16.1083C17.0766 2 17.5608 2 17.8616 2.29289C18.1624 2.58579 18.1624 3.05719 18.1624 4Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.82126 6L7.8916 21.5M14.1785 6L16.1082 21.5M18.1625 5.5H5.83765" stroke="currentColor" stroke-linecap="round"/>''',
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
