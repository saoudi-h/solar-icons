// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ladle` icon in the boldDuotone style.
class LadleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `ladle` icon in the boldDuotone style.
  const LadleBoldDuotoneIcon({
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
    name: 'ladle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M6.43421 2.5C4.81369 2.5 3.5 3.81369 3.5 5.43421C3.5 5.84842 3.16421 6.18421 2.75 6.18421C2.33579 6.18421 2 5.84842 2 5.43421C2 2.98526 3.98526 1 6.43421 1C8.88316 1 10.8684 2.98526 10.8684 5.43421V13.0024C9.97125 13.4148 9.38248 13.9258 9.36842 14.4797V5.43421C9.36842 3.81369 8.05473 2.5 6.43421 2.5Z" fill="currentColor"/>
<path d="M9.36842 14.5203C9.37662 14.8432 9.58011 15.1515 9.92615 15.4342C11.0498 16.3522 13.6763 17 15.9997 17C19.0537 17 21.9997 15.8807 21.9997 14.5V15.6842C21.9997 19.1723 19.1721 22 15.684 22C12.1958 22 9.36816 19.1723 9.36816 15.6842V14.5C9.36816 14.5068 9.36825 14.5135 9.36842 14.5203Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.9997 17C19.0537 17 21.9997 15.8807 21.9997 14.5C21.9997 13.1193 19.0537 12 15.9997 12C12.9458 12 9.36816 13.1193 9.36816 14.5C9.36816 15.8807 12.9458 17 15.9997 17Z" fill="currentColor"/>''',
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
