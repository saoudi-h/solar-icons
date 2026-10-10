// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `benzene-ring` icon in the broken style.
class BenzeneRingBrokenIcon extends StatelessWidget {
  /// Creates the `benzene-ring` icon in the broken style.
  const BenzeneRingBrokenIcon({
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
    name: 'benzene-ring',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7.02073 6.63792C6.03454 7.22412 5.54145 7.51723 5.27073 8C5 8.48277 5 9.06898 5 10.2414V13.7586C5 14.931 5 15.5172 5.27073 16C5.54145 16.4828 6.03454 16.7759 7.02073 17.3621L9.97927 19.1207C10.9655 19.7069 11.4585 20 12 20C12.5415 20 13.0345 19.7069 14.0207 19.1207L16.9793 17.3621C17.9655 16.7759 18.4585 16.4828 18.7293 16C18.9807 15.5516 18.9986 15.0139 18.9999 14M9.97927 4.87931C10.9655 4.2931 11.4585 4 12 4C12.5415 4 13.0345 4.2931 14.0207 4.87931L16.9793 6.63792C17.9655 7.22412 18.4585 7.51723 18.7293 8C18.9808 8.44845 18.9986 8.98615 18.9999 10.0001" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 8L2 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 8L22 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 16L2 18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 16.8841L16 14.5" stroke="currentColor" stroke-linecap="round"/>''',
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
