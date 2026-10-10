// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `binoculars` icon in the broken style.
class BinocularsBrokenIcon extends StatelessWidget {
  /// Creates the `binoculars` icon in the broken style.
  const BinocularsBrokenIcon({
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
    name: 'binoculars',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M4.33466 6.02973C4.67378 5.08025 4.93178 4.36059 4.99982 4C5.23028 2.77865 5.49982 2 6.99982 2H8.73347C9.83804 2 9.99982 2.89543 9.99982 4V20C9.99982 21.1046 9.10439 22 7.99982 22H3.99982C2.89525 22 1.99982 21.1046 1.99982 20C1.99982 20 1.84202 16.9462 1.99982 15C2.13128 13.3787 2.53629 11.637 3.00869 10.0196" stroke="currentColor" stroke-linecap="round"/>
<path d="M21.2718 11.0287C20.4247 7.80779 19.1637 4.86671 19.0002 4C18.7697 2.77865 18.5002 2 17.0002 2H15.2665C14.162 2 14.0002 2.89543 14.0002 4V20C14.0002 21.1046 14.8956 22 16.0002 22H20.0002C21.1047 22 22.0002 21.1046 22.0002 20C22.0002 20 22.158 16.9462 22.0002 15" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 15H10" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.99977 19H1.96045M22.0397 19H13.9943" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 9H10" stroke="currentColor" stroke-linecap="round"/>''',
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
