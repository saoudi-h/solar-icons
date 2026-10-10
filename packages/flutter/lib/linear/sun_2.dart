// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sun-2` icon in the linear style.
class Sun2LinearIcon extends StatelessWidget {
  /// Creates the `sun-2` icon in the linear style.
  const Sun2LinearIcon({
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
    name: 'sun-2',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2V4" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 20V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 12L2 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12L20 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.7778 4.22266L17.5558 6.25424" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.22217 4.22266L6.44418 6.25424" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.44434 17.5557L4.22211 19.7779" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.7778 19.7773L17.5558 17.5551" stroke="currentColor" stroke-linecap="round"/>''',
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
