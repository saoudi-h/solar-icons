// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `widget-add` icon in the boldDuotone style.
class WidgetAddBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `widget-add` icon in the boldDuotone style.
  const WidgetAddBoldDuotoneIcon({
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
    name: 'widget-add',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17.5 13C19.6213 13 20.6818 13.0002 21.3408 13.6592C21.9998 14.3182 22 15.3787 22 17.5C22 19.6213 21.9998 20.6818 21.3408 21.3408C20.6818 21.9998 19.6213 22 17.5 22C15.3787 22 14.3182 21.9998 13.6592 21.3408C13.0002 20.6818 13 19.6213 13 17.5C13 15.3787 13.0002 14.3182 13.6592 13.6592C14.3182 13.0002 15.3787 13 17.5 13Z" fill="currentColor"/>
<path d="M6.5 2C8.62132 2 9.68181 2.00017 10.3408 2.65918C10.9998 3.31819 11 4.37868 11 6.5C11 8.62132 10.9998 9.68181 10.3408 10.3408C9.68181 10.9998 8.62132 11 6.5 11C4.37868 11 3.31819 10.9998 2.65918 10.3408C2.00017 9.68181 2 8.62132 2 6.5C2 4.37868 2.00017 3.31819 2.65918 2.65918C3.31819 2.00017 4.37868 2 6.5 2Z" fill="currentColor"/>
<path d="M17.5 2.75C17.9142 2.75 18.25 3.08579 18.25 3.5V5.75H20.5C20.9142 5.75 21.25 6.08579 21.25 6.5C21.25 6.91421 20.9142 7.25 20.5 7.25H18.25V9.5C18.25 9.91421 17.9142 10.25 17.5 10.25C17.0858 10.25 16.75 9.91421 16.75 9.5V7.25H14.5C14.0858 7.25 13.75 6.91421 13.75 6.5C13.75 6.08579 14.0858 5.75 14.5 5.75H16.75V3.5C16.75 3.08579 17.0858 2.75 17.5 2.75Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 17.5C2 15.3787 2 14.318 2.65901 13.659C3.31802 13 4.37868 13 6.5 13C8.62132 13 9.68198 13 10.341 13.659C11 14.318 11 15.3787 11 17.5C11 19.6213 11 20.682 10.341 21.341C9.68198 22 8.62132 22 6.5 22C4.37868 22 3.31802 22 2.65901 21.341C2 20.682 2 19.6213 2 17.5Z" fill="currentColor"/>''',
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
