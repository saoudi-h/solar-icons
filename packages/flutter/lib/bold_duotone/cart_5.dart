// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cart-5` icon in the boldDuotone style.
class Cart5BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `cart-5` icon in the boldDuotone style.
  const Cart5BoldDuotoneIcon({
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
    name: 'cart-5',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.0005 14.25C14.4144 14.2502 14.7504 14.586 14.7505 15C14.7505 15.414 14.4145 15.7497 14.0005 15.75H10.0005C9.58628 15.75 9.25049 15.4142 9.25049 15C9.25058 14.5858 9.58633 14.25 10.0005 14.25H14.0005Z" fill="currentColor"/>
<path d="M16.0005 11.25C16.4144 11.2502 16.7504 11.586 16.7505 12C16.7505 12.414 16.4145 12.7497 16.0005 12.75H8.00049C7.58628 12.75 7.25049 12.4142 7.25049 12C7.25058 11.5858 7.58633 11.25 8.00049 11.25H16.0005Z" fill="currentColor"/>
<path d="M8.32862 2.66502C8.51386 2.29454 8.96497 2.14384 9.33545 2.32908C9.7058 2.51439 9.85563 2.9655 9.67042 3.33592L6.67042 9.33592C6.48511 9.7061 6.0349 9.85592 5.66456 9.67088C5.29418 9.48569 5.14363 9.03544 5.32862 8.66502L8.32862 2.66502Z" fill="currentColor"/>
<path d="M14.6646 2.32908C15.035 2.14384 15.4862 2.29454 15.6714 2.66502L18.6714 8.66502C18.8563 9.03543 18.7058 9.4857 18.3355 9.67088C17.9651 9.85601 17.5149 9.7061 17.3296 9.33592L14.3296 3.33592C14.1444 2.96546 14.2941 2.51435 14.6646 2.32908Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.55514 14.2572C2.83668 10.9043 2.47745 9.22793 3.378 8.11397C4.27855 7 5.99302 7 9.42196 7H14.5781C18.0071 7 19.7215 7 20.6221 8.11397C21.5226 9.22793 21.1634 10.9043 20.4449 14.2572L20.0164 16.2572C19.5294 18.5297 19.2859 19.666 18.4608 20.333C17.6357 21 16.4737 21 14.1495 21H9.85053C7.52639 21 6.36432 21 5.53925 20.333C4.71418 19.666 4.47069 18.5297 3.98372 16.2572L3.55514 14.2572Z" fill="currentColor"/>''',
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
