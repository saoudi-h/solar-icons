// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `skip-previous` icon in the bold style.
class SkipPreviousBoldIcon extends StatelessWidget {
  /// Creates the `skip-previous` icon in the bold style.
  const SkipPreviousBoldIcon({
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
    name: 'skip-previous',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M8.09015 14.6474C6.30328 13.4935 6.30328 10.5065 8.09015 9.35258L18.8792 2.38548C20.6158 1.26402 22.75 2.72368 22.75 5.0329V18.9671C22.75 21.2763 20.6158 22.736 18.8792 21.6145L8.09015 14.6474Z" fill="currentColor"/>
<path d="M2 5C2 4.58579 2.33579 4.25 2.75 4.25C3.16421 4.25 3.5 4.58579 3.5 5V19C3.5 19.4142 3.16421 19.75 2.75 19.75C2.33579 19.75 2 19.4142 2 19V5Z" fill="currentColor"/>''',
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
