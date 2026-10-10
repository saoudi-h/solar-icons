// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grip-horizontal` icon in the outline style.
class GripHorizontalOutlineIcon extends StatelessWidget {
  /// Creates the `grip-horizontal` icon in the outline style.
  const GripHorizontalOutlineIcon({
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
    name: 'grip-horizontal',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M5 14.0117C5.82843 14.0117 6.5 14.6833 6.5 15.5117C6.5 16.3401 5.82843 17.0117 5 17.0117C4.17157 17.0117 3.5 16.3401 3.5 15.5117C3.5 14.6833 4.17157 14.0117 5 14.0117Z" fill="currentColor"/>
<path d="M12 14.0117C12.8284 14.0117 13.5 14.6833 13.5 15.5117C13.5 16.3401 12.8284 17.0117 12 17.0117C11.1716 17.0117 10.5 16.3401 10.5 15.5117C10.5 14.6833 11.1716 14.0117 12 14.0117Z" fill="currentColor"/>
<path d="M19 13.9961C19.8284 13.9961 20.5 14.6677 20.5 15.4961C20.5 16.3245 19.8284 16.9961 19 16.9961C18.1716 16.9961 17.5 16.3245 17.5 15.4961C17.5 14.6677 18.1716 13.9961 19 13.9961Z" fill="currentColor"/>
<path d="M5 7.00391C5.82843 7.00391 6.5 7.67548 6.5 8.50391C6.5 9.33233 5.82843 10.0039 5 10.0039C4.17157 10.0039 3.5 9.33233 3.5 8.50391C3.5 7.67548 4.17157 7.00391 5 7.00391Z" fill="currentColor"/>
<path d="M12 7.00391C12.8284 7.00391 13.5 7.67548 13.5 8.50391C13.5 9.33233 12.8284 10.0039 12 10.0039C11.1716 10.0039 10.5 9.33233 10.5 8.50391C10.5 7.67548 11.1716 7.00391 12 7.00391Z" fill="currentColor"/>
<path d="M19 6.98828C19.8284 6.98828 20.5 7.65985 20.5 8.48828C20.5 9.31671 19.8284 9.98828 19 9.98828C18.1716 9.98828 17.5 9.31671 17.5 8.48828C17.5 7.65985 18.1716 6.98828 19 6.98828Z" fill="currentColor"/>''',
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
