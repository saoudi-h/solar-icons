// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `card` icon in the boldDuotone style.
class CardBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `card` icon in the boldDuotone style.
  const CardBoldDuotoneIcon({
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
    name: 'card',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10 15.25C10.4142 15.25 10.75 15.5858 10.75 16C10.75 16.4142 10.4142 16.75 10 16.75H6C5.58579 16.75 5.25 16.4142 5.25 16C5.25 15.5858 5.58579 15.25 6 15.25H10Z" fill="currentColor"/>
<path d="M14 15.25C14.4142 15.25 14.75 15.5858 14.75 16C14.75 16.4142 14.4142 16.75 14 16.75H12.5C12.0858 16.75 11.75 16.4142 11.75 16C11.75 15.5858 12.0858 15.25 12.5 15.25H14Z" fill="currentColor"/>
<path d="M14.0049 4C17.7858 4 19.677 4.00043 20.8516 5.11621C21.6969 5.91957 21.9337 7.07538 22 9V10H2V9C2.06629 7.07538 2.30305 5.91957 3.14844 5.11621C4.32303 4.00043 6.21416 4 9.99512 4H14.0049Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.99976 20H13.9998C17.771 20 19.6566 20 20.8282 18.8284C21.9998 17.6569 21.9998 15.7712 21.9998 12C21.9998 11.5581 21.9981 10.392 21.9962 10H2C1.99811 10.392 1.99976 11.5581 1.99976 12C1.99976 15.7712 1.99976 17.6569 3.17133 18.8284C4.34291 20 6.22852 20 9.99976 20Z" fill="currentColor"/>''',
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
