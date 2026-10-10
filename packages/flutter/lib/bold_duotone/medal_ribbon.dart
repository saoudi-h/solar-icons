// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `medal-ribbon` icon in the boldDuotone style.
class MedalRibbonBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `medal-ribbon` icon in the boldDuotone style.
  const MedalRibbonBoldDuotoneIcon({
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
    name: 'medal-ribbon',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7.54572 14.4001L7.35111 15L6.71424 17.3229C6.0859 19.6148 5.77173 20.7607 6.19097 21.388C6.3379 21.6079 6.535 21.7843 6.76372 21.9008C7.41634 22.2331 8.424 21.708 10.4393 20.6579C11.1099 20.3085 11.4452 20.1338 11.8014 20.0958C11.9335 20.0818 12.0665 20.0818 12.1986 20.0958C12.5548 20.1338 12.8901 20.3085 13.5607 20.6579C15.576 21.708 16.5837 22.2331 17.2363 21.9008C17.465 21.7843 17.6621 21.6079 17.809 21.388C18.2283 20.7607 17.9141 19.6148 17.2858 17.3229L16.6489 15L16.4543 14.4001C15.244 15.3995 13.6921 16 12 16C10.3079 16 8.75597 15.3995 7.54572 14.4001Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="9" r="7" fill="currentColor"/>''',
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
