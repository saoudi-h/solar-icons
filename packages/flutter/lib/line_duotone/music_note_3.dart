// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `music-note-3` icon in the lineDuotone style.
class MusicNote3LineDuotoneIcon extends StatelessWidget {
  /// Creates the `music-note-3` icon in the lineDuotone style.
  const MusicNote3LineDuotoneIcon({
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
    name: 'music-note-3',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12 18C12 20.2091 10.2091 22 8 22C5.79086 22 4 20.2091 4 18C4 15.7909 5.79086 14 8 14C10.2091 14 12 15.7909 12 18Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.1167 10.0587L13.4833 8.74199C13.1184 8.55954 12.9359 8.46831 12.7852 8.35309C12.3949 8.05463 12.128 7.62291 12.0357 7.14028C12 6.95397 12 6.74998 12 6.34199C12 5.3709 12 4.88536 12.1196 4.55528C12.4356 3.68288 13.3101 3.14239 14.2317 3.24989C14.5804 3.29057 15.0147 3.50771 15.8833 3.94199L18.5167 5.25871C18.8816 5.44117 19.0641 5.5324 19.2148 5.64761C19.6051 5.94608 19.872 6.3778 19.9643 6.86043C20 7.04673 20 7.25073 20 7.65871C20 8.6298 20 9.11535 19.8804 9.44543C19.5644 10.3178 18.6899 10.8583 17.7683 10.7508C17.4196 10.7101 16.9853 10.493 16.1167 10.0587Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 18V6" stroke="currentColor" stroke-linecap="round"/>''',
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
