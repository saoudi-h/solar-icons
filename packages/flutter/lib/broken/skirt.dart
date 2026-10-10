// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `skirt` icon in the broken style.
class SkirtBrokenIcon extends StatelessWidget {
  /// Creates the `skirt` icon in the broken style.
  const SkirtBrokenIcon({
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
    name: 'skirt',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9.82136 6L7.8917 21.5M14.1786 6L16.1083 21.5M19.2184 9L21.9193 17.9529C22.1353 18.6686 21.9178 19.4379 21.2655 19.8293C19.8429 20.6828 16.8602 22 12 22C7.13982 22 4.15709 20.6828 2.7345 19.8293C2.08222 19.4379 1.86473 18.6686 2.08066 17.9529L2.36813 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.1624 4V5.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.83762 5.5L3.57495 13M5.83762 5.5H18.1625M5.83762 5.5V4C5.83762 3.05719 5.83762 2.58579 6.13844 2.29289C6.43926 2 6.92343 2 7.89177 2H16.1084C17.0767 2 17.5609 2 17.8617 2.29289C18.1625 2.58579 18.1625 3.05719 18.1625 4" stroke="currentColor" stroke-linecap="round"/>''',
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
