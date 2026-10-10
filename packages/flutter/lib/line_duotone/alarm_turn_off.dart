// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `alarm-turn-off` icon in the lineDuotone style.
class AlarmTurnOffLineDuotoneIcon extends StatelessWidget {
  /// Creates the `alarm-turn-off` icon in the lineDuotone style.
  const AlarmTurnOffLineDuotoneIcon({
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
    name: 'alarm-turn-off',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14.1215 15.1216L12.0002 13.0002M12.0002 13.0002L9.87891 10.8789M12.0002 13.0002L14.1216 10.8789M12.0002 13.0002L9.87892 15.1215" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.5 4.5L7.50002 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.5 4.5L16.5 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="13" r="9" stroke="currentColor" stroke-linecap="round"/>''',
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
