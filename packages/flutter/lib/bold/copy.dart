// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `copy` icon in the bold style.
class CopyBoldIcon extends StatelessWidget {
  /// Creates the `copy` icon in the bold style.
  const CopyBoldIcon({
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
    name: 'copy',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M15.2402 5.61426C17.9551 5.61426 19.3127 5.61431 20.1562 6.46094C20.9998 7.30786 21 8.67127 21 11.3975V16.2168C21 18.9429 20.9998 20.3064 20.1562 21.1533C19.3127 21.9998 17.955 22 15.2402 22H12.3604C9.64515 22 8.2869 22.0002 7.44336 21.1533C6.59984 20.3064 6.60059 18.9429 6.60059 16.2168V11.3975C6.60059 8.67128 6.59984 7.30786 7.44336 6.46094C8.28689 5.61402 9.64506 5.61426 12.3604 5.61426H15.2402Z" fill="currentColor"/>
<path d="M15.2402 2C16.7616 2.0001 18.0629 2.94764 18.5898 4.28711C17.7091 4.16822 16.6114 4.16887 15.335 4.16895H12.2656C10.9891 4.16887 9.8886 4.16821 9.00781 4.28711C8.06393 4.41454 7.15966 4.70266 6.42578 5.43945C5.69187 6.17631 5.40523 7.08449 5.27832 8.03223C5.15992 8.91654 5.16008 10.0211 5.16016 11.3027V16.3125C5.1601 17.374 5.16027 18.6502 5.22754 19.5596C3.92032 19.0177 3 17.7249 3 16.2168V10.3789C2.99999 8.60799 3.00049 7.20531 3.14746 6.10742C3.29878 4.97738 3.61751 4.06213 4.33594 3.34082C5.05433 2.61968 5.96542 2.29937 7.09082 2.14746C8.18439 1.99988 9.58168 1.99999 11.3457 2H15.2402Z" fill="currentColor"/>''',
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
