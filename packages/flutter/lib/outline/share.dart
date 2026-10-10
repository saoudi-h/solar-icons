// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `share` icon in the outline style.
class ShareOutlineIcon extends StatelessWidget {
  /// Creates the `share` icon in the outline style.
  const ShareOutlineIcon({
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
    name: 'share',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17 2.25C18.7949 2.25 20.25 3.70507 20.25 5.5C20.25 7.29493 18.7949 8.75 17 8.75C16.1304 8.75 15.343 8.40587 14.7598 7.84961C13.193 8.86805 11.6263 9.88683 10.0596 10.9053C10.182 11.2475 10.25 11.6157 10.25 12C10.25 12.3843 10.182 12.7525 10.0596 13.0947C11.6262 14.1131 13.1931 15.1311 14.7598 16.1494C15.343 15.5934 16.1306 15.25 17 15.25C18.7949 15.25 20.25 16.7051 20.25 18.5C20.25 20.2949 18.7949 21.75 17 21.75C15.2051 21.75 13.75 20.2949 13.75 18.5C13.75 18.1158 13.8171 17.7474 13.9395 17.4053C12.3728 16.387 10.8059 15.3688 9.23926 14.3506C8.65611 14.9063 7.86912 15.25 7 15.25C5.20507 15.25 3.75 13.7949 3.75 12C3.75 10.2051 5.20507 8.75 7 8.75C7.86887 8.75 8.65616 9.09301 9.23926 9.64844C10.8059 8.63012 12.3728 7.61206 13.9395 6.59375C13.8173 6.25189 13.75 5.88385 13.75 5.5C13.75 3.70507 15.2051 2.25 17 2.25ZM17 16.75C16.0335 16.75 15.25 17.5335 15.25 18.5C15.25 19.4665 16.0335 20.25 17 20.25C17.9665 20.25 18.75 19.4665 18.75 18.5C18.75 17.5335 17.9665 16.75 17 16.75ZM7 10.25C6.0335 10.25 5.25 11.0335 5.25 12C5.25 12.9665 6.0335 13.75 7 13.75C7.9665 13.75 8.75 12.9665 8.75 12C8.75 11.0335 7.9665 10.25 7 10.25ZM17 3.75C16.0335 3.75 15.25 4.5335 15.25 5.5C15.25 6.4665 16.0335 7.25 17 7.25C17.9665 7.25 18.75 6.4665 18.75 5.5C18.75 4.5335 17.9665 3.75 17 3.75Z" fill="currentColor"/>''',
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
