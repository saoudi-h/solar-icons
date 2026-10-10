// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `scissors` icon in the boldDuotone style.
class ScissorsBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `scissors` icon in the boldDuotone style.
  const ScissorsBoldDuotoneIcon({
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
    name: 'scissors',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17.3462 1.63257C17.5492 1.27151 18.0065 1.14338 18.3676 1.34638C18.7286 1.54938 18.8568 2.00664 18.6538 2.3677L8.29606 20.7901C7.66064 21.9577 6.42286 22.7501 5 22.7501C2.92893 22.7501 1.25 21.0712 1.25 19.0001C1.25 16.9291 2.92893 15.2501 5 15.2501C6.5327 15.2501 7.85064 16.1697 8.43226 17.4871L17.3462 1.63257Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M6.65389 1.63257C6.45089 1.27151 5.99363 1.14338 5.63257 1.34638C5.27151 1.54938 5.14338 2.00664 5.34638 2.3677L15.7041 20.7901C16.3395 21.9577 17.5773 22.7501 19.0001 22.7501C21.0712 22.7501 22.7501 21.0712 22.7501 19.0001C22.7501 16.9291 21.0712 15.2501 19.0001 15.2501C17.4674 15.2501 16.1495 16.1697 15.5679 17.4871L6.65389 1.63257Z" fill="currentColor"/>''',
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
