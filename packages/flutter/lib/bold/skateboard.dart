// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `skateboard` icon in the bold style.
class SkateboardBoldIcon extends StatelessWidget {
  /// Creates the `skateboard` icon in the bold style.
  const SkateboardBoldIcon({
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
    name: 'skateboard',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M1.58405 6.37604C1.9287 6.14628 2.39435 6.23941 2.62412 6.58405L3.43665 7.80286C4.03942 8.707 5.05417 9.25008 6.14081 9.25008H17.8593C18.946 9.25008 19.9607 8.707 20.5635 7.80285L21.376 6.58405C21.6058 6.23941 22.0715 6.14628 22.4161 6.37604C22.7608 6.60581 22.8539 7.07146 22.6241 7.4161L21.8116 8.6349C20.9306 9.95635 19.4475 10.7501 17.8593 10.7501H6.14081C4.55264 10.7501 3.06954 9.95635 2.18858 8.63491L1.37604 7.4161C1.14628 7.07146 1.23941 6.60581 1.58405 6.37604Z" fill="currentColor"/>
<path d="M9.00008 15.0001C9.00008 16.1046 8.10465 17.0001 7.00008 17.0001C5.89551 17.0001 5.00008 16.1046 5.00008 15.0001C5.00008 13.8955 5.89551 13.0001 7.00008 13.0001C8.10465 13.0001 9.00008 13.8955 9.00008 15.0001Z" fill="currentColor"/>
<path d="M19.0001 15.0001C19.0001 16.1046 18.1046 17.0001 17.0001 17.0001C15.8955 17.0001 15.0001 16.1046 15.0001 15.0001C15.0001 13.8955 15.8955 13.0001 17.0001 13.0001C18.1046 13.0001 19.0001 13.8955 19.0001 15.0001Z" fill="currentColor"/>''',
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
