// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `circle-dashed` icon in the lineDuotone style.
class CircleDashedLineDuotoneIcon extends StatelessWidget {
  /// Creates the `circle-dashed` icon in the lineDuotone style.
  const CircleDashedLineDuotoneIcon({
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
    name: 'circle-dashed',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M20.3067 6.42919C19.9509 5.89998 19.5391 5.39725 19.0712 4.92936C18.6033 4.46146 18.1006 4.04962 17.5714 3.69385M21.813 13.9344C21.9356 13.3087 21.9999 12.662 21.9999 12.0003C21.9999 11.3386 21.9356 10.6919 21.813 10.0661M17.5709 20.307C18.1001 19.9512 18.6028 19.5393 19.0707 19.0714C19.5386 18.6036 19.9504 18.1008 20.3062 17.5716M10.0656 21.8133C10.6914 21.9359 11.3381 22.0002 11.9998 22.0002C12.6615 22.0002 13.3082 21.9359 13.934 21.8133M3.69312 17.5711C4.04889 18.1003 4.46073 18.6031 4.92862 19.071C5.39652 19.5389 5.89925 19.9507 6.42846 20.3065" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2.18691 10.0657C2.06427 10.6915 2 11.3382 2 11.9999C2 12.6616 2.06427 13.3083 2.18691 13.9341M6.42903 3.69321C5.89982 4.04898 5.39709 4.46082 4.92919 4.92872C4.4613 5.39661 4.04946 5.89934 3.69369 6.42855M13.9343 2.18691C13.3085 2.06427 12.6618 2 12.0001 2C11.3384 2 10.6917 2.06427 10.0659 2.18691" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
