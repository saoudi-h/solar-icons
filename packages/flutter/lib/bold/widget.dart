// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `widget` icon in the bold style.
class WidgetBoldIcon extends StatelessWidget {
  /// Creates the `widget` icon in the bold style.
  const WidgetBoldIcon({
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
    name: 'widget',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M6.5 13C8.62132 13 9.68181 13.0002 10.3408 13.6592C10.9998 14.3182 11 15.3787 11 17.5C11 19.6213 10.9998 20.6818 10.3408 21.3408C9.68181 21.9998 8.62132 22 6.5 22C4.37868 22 3.31819 21.9998 2.65918 21.3408C2.00017 20.6818 2 19.6213 2 17.5C2 15.3787 2.00017 14.3182 2.65918 13.6592C3.31819 13.0002 4.37868 13 6.5 13Z" fill="currentColor"/>
<path d="M17.5 13C19.6213 13 20.6818 13.0002 21.3408 13.6592C21.9998 14.3182 22 15.3787 22 17.5C22 19.6213 21.9998 20.6818 21.3408 21.3408C20.6818 21.9998 19.6213 22 17.5 22C15.3787 22 14.3182 21.9998 13.6592 21.3408C13.0002 20.6818 13 19.6213 13 17.5C13 15.3787 13.0002 14.3182 13.6592 13.6592C14.3182 13.0002 15.3787 13 17.5 13Z" fill="currentColor"/>
<path d="M6.5 2C8.62132 2 9.68181 2.00017 10.3408 2.65918C10.9998 3.31819 11 4.37868 11 6.5C11 8.62132 10.9998 9.68181 10.3408 10.3408C9.68181 10.9998 8.62132 11 6.5 11C4.37868 11 3.31819 10.9998 2.65918 10.3408C2.00017 9.68181 2 8.62132 2 6.5C2 4.37868 2.00017 3.31819 2.65918 2.65918C3.31819 2.00017 4.37868 2 6.5 2Z" fill="currentColor"/>
<path d="M17.5 2C19.6213 2 20.6818 2.00017 21.3408 2.65918C21.9998 3.31819 22 4.37868 22 6.5C22 8.62132 21.9998 9.68181 21.3408 10.3408C20.6818 10.9998 19.6213 11 17.5 11C15.3787 11 14.3182 10.9998 13.6592 10.3408C13.0002 9.68181 13 8.62132 13 6.5C13 4.37868 13.0002 3.31819 13.6592 2.65918C14.3182 2.00017 15.3787 2 17.5 2Z" fill="currentColor"/>''',
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
