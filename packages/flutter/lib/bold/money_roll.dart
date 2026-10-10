// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `money-roll` icon in the bold style.
class MoneyRollBoldIcon extends StatelessWidget {
  /// Creates the `money-roll` icon in the bold style.
  const MoneyRollBoldIcon({
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
    name: 'money-roll',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M8.25 5.00055C5.93257 5.00586 4.69253 5.06286 3.77772 5.67412C3.34096 5.96596 2.96596 6.34096 2.67412 6.77772C2 7.78661 2 9.19108 2 12C2 14.8089 2 16.2134 2.67412 17.2223C2.96596 17.659 3.34096 18.034 3.77772 18.3259C4.69253 18.9371 5.93258 18.9941 8.25 18.9995V14.9055C6.95608 14.5725 6 13.3979 6 12C6 10.6021 6.95608 9.42755 8.25 9.09451V5.00055Z" fill="currentColor"/>
<path d="M9.75 19L14.25 19V5H9.75V19Z" fill="currentColor"/>
<path d="M15.75 5.00055V9.09451C17.0439 9.42755 18 10.6021 18 12C18 13.3979 17.0439 14.5725 15.75 14.9055V18.9995C18.0674 18.9941 19.3075 18.9371 20.2223 18.3259C20.659 18.034 21.034 17.659 21.3259 17.2223C22 16.2134 22 14.8089 22 12C22 9.19107 22 7.78661 21.3259 6.77772C21.034 6.34096 20.659 5.96595 20.2223 5.67412C19.3075 5.06286 18.0674 5.00586 15.75 5.00055Z" fill="currentColor"/>''',
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
