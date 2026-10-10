// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `oven-mitts` icon in the boldDuotone style.
class OvenMittsBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `oven-mitts` icon in the boldDuotone style.
  const OvenMittsBoldDuotoneIcon({
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
    name: 'oven-mitts',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.2978 20.0262L20.0785 13.3965C22.6407 10.8913 22.6407 6.82951 20.0785 4.32429C17.5162 1.81908 13.3619 1.81908 10.7996 4.32429L10.3343 4.77929C9.91498 3.15159 8.66775 1.97843 7.21321 2.0003C5.4411 2.02694 4.03233 3.81732 4.06664 5.99923L4.03449 9.34056C4.02721 10.0967 4.02358 10.4748 3.88984 10.8109L3.88574 10.8211L13.1931 20.1285L13.2978 20.0262Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M4.0188 16.5368L7.58758 20.0261C8.93345 21.342 9.60638 21.9999 10.4426 21.9999C11.2568 21.9999 11.9163 21.3761 13.1929 20.1284L3.88558 10.821C3.74995 11.1536 3.45438 11.4749 2.86916 12.1112C2.28972 12.7411 2 13.2089 2 13.7453C2 14.5629 2.67293 15.2209 4.0188 16.5368Z" fill="currentColor"/>''',
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
