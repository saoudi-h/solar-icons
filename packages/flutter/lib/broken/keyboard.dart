// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `keyboard` icon in the broken style.
class KeyboardBrokenIcon extends StatelessWidget {
  /// Creates the `keyboard` icon in the broken style.
  const KeyboardBrokenIcon({
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
    name: 'keyboard',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M16 5C18.8284 5 20.2426 5 21.1213 5.87868C22 6.75736 22 8.17157 22 11V13C22 15.8284 22 17.2426 21.1213 18.1213C20.2426 19 18.8284 19 16 19H8C5.17157 19 3.75736 19 2.87868 18.1213C2 17.2426 2 15.8284 2 13V11C2 8.17157 2 6.75736 2.87868 5.87868C3.75736 5 5.17157 5 8 5H12" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 16H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 9H6.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 9H9.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 9H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15 9H15.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 9H18.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 12H18.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15 12H15.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 12H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 12H9.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6 12H6.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
