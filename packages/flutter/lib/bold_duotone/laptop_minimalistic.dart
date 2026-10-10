// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `laptop-minimalistic` icon in the boldDuotone style.
class LaptopMinimalisticBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `laptop-minimalistic` icon in the boldDuotone style.
  const LaptopMinimalisticBoldDuotoneIcon({
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
    name: 'laptop-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M22.2324 19.4805C22.6562 19.4805 22.9999 19.8206 23 20.2402C23 20.66 22.6563 21 22.2324 21H1.76758C1.34373 21 1 20.66 1 20.2402C1.00013 19.8206 1.34381 19.4805 1.76758 19.4805H22.2324Z" fill="currentColor"/>
<path d="M15.0703 14.4004C15.494 14.4005 15.8378 14.7406 15.8379 15.1602C15.8379 15.5798 15.494 15.9198 15.0703 15.9199H8.93066C8.50682 15.9199 8.16309 15.5799 8.16309 15.1602C8.16321 14.7405 8.5069 14.4004 8.93066 14.4004H15.0703Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.69013 3.8904C2.79102 4.78079 2.79102 6.21386 2.79102 9.08V14.1467C2.79102 16.0574 2.79102 17.0128 3.39042 17.6064C3.98983 18.2 4.95457 18.2 6.88404 18.2H17.1166C19.0461 18.2 20.0108 18.2 20.6102 17.6064C21.2096 17.0128 21.2096 16.0574 21.2096 14.1467V9.08C21.2096 6.21386 21.2096 4.78079 20.3105 3.8904C19.4114 3 17.9643 3 15.0701 3H8.93055C6.03635 3 4.58924 3 3.69013 3.8904Z" fill="currentColor"/>''',
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
