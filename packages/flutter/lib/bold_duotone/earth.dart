// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `earth` icon in the boldDuotone style.
class EarthBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `earth` icon in the boldDuotone style.
  const EarthBoldDuotoneIcon({
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
    name: 'earth',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21.9238 13.2412C21.3691 17.7225 17.8495 21.2846 13.3887 21.9043C13.0661 21.2253 12.684 19.6947 13.4365 18.2764C14.4179 16.427 17.6734 16.4141 17.7178 16.4141C21.1498 16.3783 21.6139 14.2944 21.9238 13.2412Z" fill="currentColor"/>
<path d="M12 2C14.2134 2 16.2594 2.7192 17.916 3.93652C18.1499 4.64697 17.7043 6.13116 17.2363 6.8418C17.0668 7.09916 16.6813 7.41881 16.2598 7.72168C15.3093 8.40449 14.1098 8.74264 13.5 10C13.3257 10.3594 13.3331 10.7112 13.417 11.0166C13.4772 11.2361 13.516 11.4746 13.5166 11.708C13.5185 12.4629 12.7549 13.0082 12 13C10.0359 12.9784 8.75022 11.3953 8.5752 9.44727C8.3879 7.3631 6.78024 5.42146 6 4.71094L5.56934 4.3418C7.30783 2.88036 9.55113 2.00008 12 2Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="10" fill="currentColor"/>''',
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
