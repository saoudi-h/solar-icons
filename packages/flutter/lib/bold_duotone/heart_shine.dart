// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `heart-shine` icon in the boldDuotone style.
class HeartShineBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `heart-shine` icon in the boldDuotone style.
  const HeartShineBoldDuotoneIcon({
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
    name: 'heart-shine',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M7 11.0595C7 13.6018 9.00971 14.9566 10.4809 16.1692C11 16.5971 11.5 17 12 17C12.5 17 13 16.5971 13.5191 16.1692C14.9903 14.9566 17 13.6018 17 11.0595C17 8.51718 14.2499 6.71421 12 9.15837C9.75008 6.71421 7 8.51718 7 11.0595Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M12 19.25C12.4142 19.25 12.75 19.5858 12.75 20V22C12.75 22.4142 12.4142 22.75 12 22.75C11.5858 22.75 11.25 22.4142 11.25 22V20C11.25 19.5858 11.5858 19.25 12 19.25Z" fill="currentColor"/>
<path d="M5.8125 17.127C6.10539 16.8341 6.58015 16.8341 6.87305 17.127C7.16594 17.4198 7.16594 17.8946 6.87305 18.1875L6.53027 18.5303C6.23738 18.8232 5.76262 18.8232 5.46973 18.5303C5.17683 18.2374 5.17683 17.7626 5.46973 17.4697L5.8125 17.127Z" fill="currentColor"/>
<path d="M17.127 17.127C17.4198 16.8341 17.8946 16.8341 18.1875 17.127L18.5303 17.4697C18.8232 17.7626 18.8232 18.2374 18.5303 18.5303C18.2374 18.8232 17.7626 18.8232 17.4697 18.5303L17.127 18.1875C16.8341 17.8946 16.8341 17.4198 17.127 17.127Z" fill="currentColor"/>
<path d="M4 11.25C4.41421 11.25 4.75 11.5858 4.75 12C4.75 12.4142 4.41421 12.75 4 12.75H2C1.58579 12.75 1.25 12.4142 1.25 12C1.25 11.5858 1.58579 11.25 2 11.25H4Z" fill="currentColor"/>
<path d="M22 11.25C22.4142 11.25 22.75 11.5858 22.75 12C22.75 12.4142 22.4142 12.75 22 12.75H20C19.5858 12.75 19.25 12.4142 19.25 12C19.25 11.5858 19.5858 11.25 20 11.25H22Z" fill="currentColor"/>
<path d="M5.46973 5.46973C5.76262 5.17683 6.23738 5.17683 6.53027 5.46973L6.87402 5.8125C7.16692 6.10539 7.16692 6.58113 6.87402 6.87402C6.58113 7.16692 6.10539 7.16692 5.8125 6.87402L5.46973 6.53027C5.17683 6.23738 5.17683 5.76262 5.46973 5.46973Z" fill="currentColor"/>
<path d="M17.4697 5.46973C17.7626 5.17683 18.2374 5.17683 18.5303 5.46973C18.8232 5.76262 18.8232 6.23738 18.5303 6.53027L18.1875 6.87402C17.8946 7.16692 17.4189 7.16692 17.126 6.87402C16.8331 6.58113 16.8331 6.10539 17.126 5.8125L17.4697 5.46973Z" fill="currentColor"/>
<path d="M12 1.25C12.4142 1.25 12.75 1.58579 12.75 2V4C12.75 4.41421 12.4142 4.75 12 4.75C11.5858 4.75 11.25 4.41421 11.25 4V2C11.25 1.58579 11.5858 1.25 12 1.25Z" fill="currentColor"/>
</g>''',
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
