// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grid-2x2` icon in the bold style.
class Grid2x2BoldIcon extends StatelessWidget {
  /// Creates the `grid-2x2` icon in the bold style.
  const Grid2x2BoldIcon({
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
    name: 'grid-2x2',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M11.25 12.7451V21.998C7.03168 21.9939 4.84949 21.9198 3.46484 20.5352C2.07966 19.15 2.00504 16.9666 2.00098 12.7451H11.25Z" fill="currentColor"/>
<path d="M21.999 12.7451C21.995 16.9666 21.9203 19.15 20.5352 20.5352C19.1505 21.9198 16.9683 21.9939 12.75 21.998V12.7451H21.999Z" fill="currentColor"/>
<path d="M12.75 2.00098C16.9683 2.00509 19.1505 2.08019 20.5352 3.46484C21.9193 4.84896 21.9949 7.03 21.999 11.2451H12.75V2.00098Z" fill="currentColor"/>
<path d="M11.25 11.2451H2.00098C2.00514 7.03 2.08073 4.84896 3.46484 3.46484C4.84949 2.08019 7.03168 2.00509 11.25 2.00098V11.2451Z" fill="currentColor"/>''',
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
