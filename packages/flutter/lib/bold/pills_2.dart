// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `pills-2` icon in the bold style.
class Pills2BoldIcon extends StatelessWidget {
  /// Creates the `pills-2` icon in the bold style.
  const Pills2BoldIcon({
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
    name: 'pills-2',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M21.9434 17.75C21.7895 18.7694 21.3201 19.7502 20.5352 20.5352C18.5825 22.4878 15.4175 22.4877 13.4648 20.5352C12.6799 19.7502 12.2105 18.7695 12.0566 17.75H21.9434Z" fill="currentColor"/>
<path d="M13.4648 13.4648C15.4175 11.5123 18.5825 11.5122 20.5352 13.4648C21.3201 14.2498 21.7895 15.2305 21.9434 16.25H12.0566C12.2105 15.2305 12.6799 14.2498 13.4648 13.4648Z" fill="currentColor"/>
<path d="M10.9658 11.0264C10.1362 11.6385 9.11014 12 8 12C5.23858 12 3 9.76142 3 7C3 5.88986 3.36152 4.86384 3.97363 4.03418L10.9658 11.0264Z" fill="currentColor"/>
<path d="M8 2C10.7614 2 13 4.23858 13 7C13 8.11014 12.6385 9.13616 12.0264 9.96582L5.03418 2.97363C5.86384 2.36152 6.88986 2 8 2Z" fill="currentColor"/>''',
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
