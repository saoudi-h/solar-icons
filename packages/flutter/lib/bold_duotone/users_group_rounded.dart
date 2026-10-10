// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `users-group-rounded` icon in the boldDuotone style.
class UsersGroupRoundedBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `users-group-rounded` icon in the boldDuotone style.
  const UsersGroupRoundedBoldDuotoneIcon({
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
    name: 'users-group-rounded',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M9.00098 13.001C12.867 13.001 16.001 14.7918 16.001 17.001C16.001 19.2101 12.867 21.001 9.00098 21.001C5.13498 21.001 2.00098 19.2101 2.00098 17.001C2.00098 14.7918 5.13498 13.001 9.00098 13.001Z" fill="currentColor"/>
<path d="M9.00098 2C11.2101 2 13.001 3.79086 13.001 6C13.001 8.20914 11.2101 10 9.00098 10C6.79184 10 5.00098 8.20914 5.00098 6C5.00098 3.79086 6.79184 2 9.00098 2Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M16 14C18.7614 14 21 15.3431 21 17C21 18.6569 18.7614 20 16 20C13.2386 20 11 18.6569 11 17C11 15.3431 13.2386 14 16 14Z" fill="currentColor"/>
<path d="M15 3C16.6569 3 18 4.34315 18 6C18 7.65685 16.6569 9 15 9C13.3431 9 12 7.65685 12 6C12 4.34315 13.3431 3 15 3Z" fill="currentColor"/>
</g>''',
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
