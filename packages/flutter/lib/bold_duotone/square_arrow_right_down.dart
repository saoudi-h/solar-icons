// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-arrow-right-down` icon in the boldDuotone style.
class SquareArrowRightDownBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `square-arrow-right-down` icon in the boldDuotone style.
  const SquareArrowRightDownBoldDuotoneIcon({
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
    name: 'square-arrow-right-down',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M15.5787 14.8278C15.5787 15.242 15.2429 15.5778 14.8287 15.5778L10.5861 15.5778C10.1719 15.5778 9.83609 15.242 9.83609 14.8278C9.83609 14.4135 10.1719 14.0778 10.5861 14.0778H13.0181L8.64154 9.70123C8.34865 9.40834 8.34865 8.93346 8.64154 8.64057C8.93444 8.34768 9.40931 8.34768 9.70221 8.64057L14.0787 13.0171L14.0787 10.5851C14.0787 10.1709 14.4145 9.83511 14.8287 9.83511C15.2429 9.83511 15.5787 10.1709 15.5787 10.5851L15.5787 14.8278Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28596 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28596 22 12C22 16.714 22 19.0711 20.5355 20.5355Z" fill="currentColor"/>''',
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
