// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `pin` icon in the lineDuotone style.
class PinLineDuotoneIcon extends StatelessWidget {
  /// Creates the `pin` icon in the lineDuotone style.
  const PinLineDuotoneIcon({
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
    name: 'pin',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M19.0717 8.03562L15.9894 4.9502C13.8824 2.84101 12.8289 1.78641 11.6973 2.03606C10.5658 2.28571 10.0528 3.68593 9.02673 6.48636L8.33227 8.38177C8.05874 9.12835 7.92197 9.50164 7.6759 9.79038C7.56548 9.91994 7.43986 10.0357 7.30174 10.1351C6.99393 10.3567 6.61099 10.4623 5.84512 10.6735C4.11889 11.1494 3.25578 11.3873 2.93053 11.9521C2.78993 12.1962 2.71676 12.4734 2.71854 12.7552C2.72266 13.4071 3.35569 14.0408 4.62176 15.3081L8.73845 19.429C10.0126 20.7044 10.6496 21.3421 11.3053 21.3431C11.5816 21.3435 11.8533 21.2717 12.0933 21.1347C12.663 20.8096 12.9022 19.9401 13.3807 18.2012C13.591 17.4366 13.6962 17.0543 13.917 16.7466C14.0136 16.6119 14.1258 16.489 14.2511 16.3805C14.5373 16.1326 14.9082 15.9933 15.6499 15.7146L17.567 14.9943C20.3365 13.9537 21.7212 13.4335 21.9652 12.3049C22.2093 11.1764 21.1634 10.1295 19.0717 8.03562Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 21.9998L6.65323 17.3418" stroke="currentColor" stroke-linecap="round"/>''',
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
