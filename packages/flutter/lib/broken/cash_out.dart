// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cash-out` icon in the broken style.
class CashOutBrokenIcon extends StatelessWidget {
  /// Creates the `cash-out` icon in the broken style.
  const CashOutBrokenIcon({
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
    name: 'cash-out',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M5.88889 3.5C3.74111 3.5 2 5.29998 2 7.52036C2 9.42457 3.28058 11.0196 5 11.4352" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 11.4352C20.7194 11.0196 22 9.42457 22 7.52036C22 5.29998 20.2589 3.5 18.1111 3.5H10.0049" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 6.5V13.5M10 11.1667L12 13.5L14 11.1667" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 10.5C5 8.61438 5 7.67157 5.58579 7.08579C6.17157 6.5 7.11438 6.5 9 6.5H15C16.8856 6.5 17.8284 6.5 18.4142 7.08579C19 7.67157 19 8.61438 19 10.5V16.5C19 18.3856 19 19.3284 18.4142 19.9142C17.8284 20.5 16.8856 20.5 15 20.5H9C7.11438 20.5 6.17157 20.5 5.58579 19.9142C5 19.3284 5 18.3856 5 16.5V10.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 17.5H13.0047" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M17.011 17.5H19.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
