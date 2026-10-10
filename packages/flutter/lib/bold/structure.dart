// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `structure` icon in the bold style.
class StructureBoldIcon extends StatelessWidget {
  /// Creates the `structure` icon in the bold style.
  const StructureBoldIcon({
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
    name: 'structure',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.90695 4.25572C7.57591 2.9589 6.39994 2 5 2C3.34315 2 2 3.34315 2 5C2 6.39994 2.9589 7.57591 4.25572 7.90695C4.25194 7.93744 4.25 7.96849 4.25 8V16C4.25 16.0315 4.25195 16.0626 4.25572 16.093C2.9589 16.4241 2 17.6001 2 19C2 20.6569 3.34315 22 5 22C6.39994 22 7.57591 21.0411 7.90695 19.7443C7.93744 19.7481 7.96849 19.75 8 19.75H16C16.0315 19.75 16.0626 19.7481 16.093 19.7443C16.4241 21.0411 17.6001 22 19 22C20.6569 22 22 20.6569 22 19C22 17.6001 21.0411 16.4241 19.7443 16.093C19.7481 16.0626 19.75 16.0315 19.75 16V8C19.75 7.96849 19.7481 7.93744 19.7443 7.90695C21.0411 7.57591 22 6.39994 22 5C22 3.34315 20.6569 2 19 2C17.6001 2 16.4241 2.9589 16.093 4.25572C16.0626 4.25195 16.0315 4.25 16 4.25H8C7.96849 4.25 7.93744 4.25194 7.90695 4.25572ZM5.74428 7.90695C5.74806 7.93744 5.75 7.96849 5.75 8L5.75 16C5.75 16.0315 5.74805 16.0626 5.74428 16.093C6.80311 16.3633 7.63667 17.1969 7.90695 18.2557C7.93744 18.2519 7.96849 18.25 8 18.25H16C16.0315 18.25 16.0626 18.2519 16.093 18.2557C16.3633 17.1969 17.1969 16.3633 18.2557 16.093C18.2519 16.0626 18.25 16.0315 18.25 16V8C18.25 7.96849 18.2519 7.93744 18.2557 7.90695C17.1969 7.63667 16.3633 6.80311 16.093 5.74428C16.0626 5.74805 16.0315 5.75 16 5.75H8C7.96849 5.75 7.93744 5.74806 7.90695 5.74429C7.63666 6.80311 6.80311 7.63667 5.74428 7.90695Z" fill="currentColor"/>''',
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
