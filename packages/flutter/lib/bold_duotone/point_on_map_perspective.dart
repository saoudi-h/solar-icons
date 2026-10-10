// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `point-on-map-perspective` icon in the boldDuotone style.
class PointOnMapPerspectiveBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `point-on-map-perspective` icon in the boldDuotone style.
  const PointOnMapPerspectiveBoldDuotoneIcon({
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
    name: 'point-on-map-perspective',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.7734 21.4062C19.8757 22.0002 18.4822 22 16 22H8C6.28296 22 5.08708 22.0003 4.21582 21.8037L12.2588 16.7236L20.7734 21.4062Z" fill="currentColor"/>
<path d="M10.7578 15.8975L2.73535 20.9648C1.99979 20.0759 2 18.6657 2 16C2 13.6392 1.99973 12.2635 2.51074 11.3623L10.7578 15.8975Z" fill="currentColor"/>
<path d="M17 2C18.6569 2 20 3.34315 20 5C20 6.39786 19.0439 7.57222 17.75 7.90527V13C17.75 13.4142 17.4142 13.75 17 13.75C16.5858 13.75 16.25 13.4142 16.25 13V7.90527C14.9561 7.57222 14 6.39786 14 5C14 3.34315 15.3431 2 17 2Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22.0001 16C22.0001 13.1716 22.0001 11.7574 21.1214 10.8787C20.6315 10.3888 19.9752 10.172 19.0001 10.0761C18.1668 10.0507 16.2001 10 15.0001 10H8.00007C5.95519 10 4.64951 10 3.75098 10.332L21.6868 20.1968C22.0001 19.3 22.0001 18.0055 22.0001 16Z" fill="currentColor"/>''',
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
