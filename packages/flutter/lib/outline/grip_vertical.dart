// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grip-vertical` icon in the outline style.
class GripVerticalOutlineIcon extends StatelessWidget {
  /// Creates the `grip-vertical` icon in the outline style.
  const GripVerticalOutlineIcon({
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
    name: 'grip-vertical',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M8.50391 17.5C9.33233 17.5 10.0039 18.1716 10.0039 19C10.0039 19.8284 9.33233 20.5 8.50391 20.5C7.67548 20.5 7.00391 19.8284 7.00391 19C7.00391 18.1716 7.67548 17.5 8.50391 17.5Z" fill="currentColor"/>
<path d="M15.5117 17.5C16.3401 17.5 17.0117 18.1716 17.0117 19C17.0117 19.8284 16.3401 20.5 15.5117 20.5C14.6833 20.5 14.0117 19.8284 14.0117 19C14.0117 18.1716 14.6833 17.5 15.5117 17.5Z" fill="currentColor"/>
<path d="M8.50391 10.5C9.33233 10.5 10.0039 11.1716 10.0039 12C10.0039 12.8284 9.33233 13.5 8.50391 13.5C7.67548 13.5 7.00391 12.8284 7.00391 12C7.00391 11.1716 7.67548 10.5 8.50391 10.5Z" fill="currentColor"/>
<path d="M15.5117 10.5C16.3401 10.5 17.0117 11.1716 17.0117 12C17.0117 12.8284 16.3401 13.5 15.5117 13.5C14.6833 13.5 14.0117 12.8284 14.0117 12C14.0117 11.1716 14.6833 10.5 15.5117 10.5Z" fill="currentColor"/>
<path d="M8.48828 3.5C9.31671 3.5 9.98828 4.17157 9.98828 5C9.98828 5.82843 9.31671 6.5 8.48828 6.5C7.65985 6.5 6.98828 5.82843 6.98828 5C6.98828 4.17157 7.65985 3.5 8.48828 3.5Z" fill="currentColor"/>
<path d="M15.4961 3.5C16.3245 3.5 16.9961 4.17157 16.9961 5C16.9961 5.82843 16.3245 6.5 15.4961 6.5C14.6677 6.5 13.9961 5.82843 13.9961 5C13.9961 4.17157 14.6677 3.5 15.4961 3.5Z" fill="currentColor"/>''',
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
