// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sun-2` icon in the broken style.
class Sun2BrokenIcon extends StatelessWidget {
  /// Creates the `sun-2` icon in the broken style.
  const Sun2BrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7.28451 10.3333C7.10026 10.8546 7 11.4156 7 12C7 14.7614 9.23858 17 12 17C14.7614 17 17 14.7614 17 12C17 9.23858 14.7614 7 12 7C11.4156 7 10.8546 7.10026 10.3333 7.28451" stroke="currentColor" stroke-linecap="round"/>
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
