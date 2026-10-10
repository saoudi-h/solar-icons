// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `smart-vacuum-cleaner` icon in the broken style.
class SmartVacuumCleanerBrokenIcon extends StatelessWidget {
  /// Creates the `smart-vacuum-cleaner` icon in the broken style.
  const SmartVacuumCleanerBrokenIcon({
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
    name: 'smart-vacuum-cleaner',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 9C15 7.34315 13.6569 6 12 6C10.3431 6 9 7.34315 9 9C9 10.6569 10.3431 12 12 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 18V16" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.6451 20.8579C17.1555 21.26 17.7998 21.4999 18.5 21.4999C20.1569 21.4999 21.5 20.1568 21.5 18.4999C21.5 17.7997 21.2601 17.1555 20.858 16.645" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.35462 20.8579C6.84413 21.2601 6.19984 21.5001 5.49951 21.5001C3.84266 21.5001 2.49951 20.1569 2.49951 18.5001C2.49951 17.7996 2.73954 17.1553 3.14183 16.6448" stroke="currentColor" stroke-linecap="round"/>''',
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
