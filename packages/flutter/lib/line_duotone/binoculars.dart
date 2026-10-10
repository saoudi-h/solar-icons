// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `binoculars` icon in the lineDuotone style.
class BinocularsLineDuotoneIcon extends StatelessWidget {
  /// Creates the `binoculars` icon in the lineDuotone style.
  const BinocularsLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8.73372 2H7.00007C5.50007 2 5.23053 2.77865 5.00007 4C4.7696 5.22135 2.35991 10.5619 2.00007 15C1.84226 16.9462 2.00007 20 2.00007 20C2.00007 21.1046 2.8955 22 4.00007 22H8.00007C9.10464 22 10.0001 21.1046 10.0001 20V4C10.0001 2.89543 9.83829 2 8.73372 2Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.2663 2H16.9999C18.4999 2 18.7695 2.77865 18.9999 4C19.2304 5.22135 21.6401 10.5619 21.9999 15C22.1577 16.9462 21.9999 20 21.9999 20C21.9999 21.1046 21.1045 22 19.9999 22H15.9999C14.8954 22 13.9999 21.1046 13.9999 20V4C13.9999 2.89543 14.1617 2 15.2663 2Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M14 15H10" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M9.99977 19H1.96045M22.0397 19H13.9943" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M14 9H10" stroke="currentColor" stroke-linecap="round"/>''',
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
