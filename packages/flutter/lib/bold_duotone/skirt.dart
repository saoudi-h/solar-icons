// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `skirt` icon in the boldDuotone style.
class SkirtBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `skirt` icon in the boldDuotone style.
  const SkirtBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.1084 2C17.0767 2 17.5615 2.00008 17.8623 2.29297C18.1629 2.58588 18.1631 3.05742 18.1631 4V5.5H5.83789V4C5.83789 3.05725 5.83791 2.58587 6.13867 2.29297C6.43945 2.00012 6.92356 2 7.8916 2H16.1084Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M21.9194 17.9531C22.1352 18.6687 21.918 19.4377 21.2661 19.8291C20.281 20.4201 18.5471 21.2334 15.9604 21.6777C14.8117 21.8751 13.494 22 11.9995 22C10.5046 22 9.1874 21.8751 8.03852 21.6777C5.45245 21.2333 3.71981 20.4201 2.73481 19.8291C2.08262 19.4378 1.86473 18.6688 2.08052 17.9531L5.83735 5.5H18.1625L21.9194 17.9531Z" fill="currentColor"/>

<path opacity="0.5" d="M21.9199 17.9531C22.1357 18.6688 21.9178 19.4378 21.2656 19.8291C20.2805 20.4201 18.5466 21.2334 15.96 21.6777C14.8113 21.8751 13.4945 22 12 22C10.5049 22 9.18707 21.8752 8.03809 21.6777L9.99902 5.5H18.1621L21.9199 17.9531Z" fill="currentColor"/>

<path opacity="0.5" d="M18.1621 5.5L21.9199 17.9531C22.1357 18.6688 21.9178 19.4378 21.2656 19.8291C20.2806 20.4201 18.5474 21.2333 15.9609 21.6777L14 5.5H18.1621Z" fill="currentColor"/>''',
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
