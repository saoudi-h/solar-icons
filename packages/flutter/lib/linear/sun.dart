// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sun` icon in the linear style.
class SunLinearIcon extends StatelessWidget {
  /// Creates the `sun` icon in the linear style.
  const SunLinearIcon({
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
    name: 'sun',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="6" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2V3" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 21V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12L21 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 12L2 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.0708 4.92969L18.678 5.32252" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.32178 18.6777L4.92894 19.0706" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.0708 19.0703L18.678 18.6775" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.32178 5.32227L4.92894 4.92943" stroke="currentColor" stroke-linecap="round"/>''',
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
