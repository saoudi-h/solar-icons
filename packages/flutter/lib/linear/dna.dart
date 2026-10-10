// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `dna` icon in the linear style.
class DnaLinearIcon extends StatelessWidget {
  /// Creates the `dna` icon in the linear style.
  const DnaLinearIcon({
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
    name: 'dna',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M11.8476 12.1524L12.0462 12.2208C15.3052 13.3428 19.2301 12.2699 22 9.5M11.8476 12.1524L11.2902 11.9606C8.24848 10.9134 4.58525 11.9147 2 14.5M11.8476 12.1524L11.7792 11.9538C10.6572 8.69481 11.7301 4.76991 14.5 2M11.8476 12.1524L12.0394 12.7098C13.0866 15.7515 12.0853 19.4147 9.5 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.76465 11.8433L11.8431 16.9217" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.8438 6.76465L16.9222 11.8431" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 13L7.5 16.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.7783 10.8906L16.2783 7.39062" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.30469 18.1914L10.8917 19.7784" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5869 5.58691L12.9999 3.99989" stroke="currentColor" stroke-linecap="round"/>''',
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
