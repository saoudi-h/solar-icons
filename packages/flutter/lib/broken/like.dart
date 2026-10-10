// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `like` icon in the broken style.
class LikeBrokenIcon extends StatelessWidget {
  /// Creates the `like` icon in the broken style.
  const LikeBrokenIcon({
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
    name: 'like',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3 21.5127V10.2341" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 10.2342L3.9716 21.4707C3.99621 21.7553 3.77207 22 3.48671 22C3.21791 22 3 21.7818 3 21.5127" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9951 5.22145C14.1027 4.56438 14.072 3.89203 13.9048 3.24756" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.59634 22C7.73256 22 7.01226 21.3386 6.93776 20.4771L6.1256 11.0844C6.07944 10.5506 6.29247 10.027 6.69813 9.67749L8.13687 8.43769C8.8044 7.86246 9.44659 7.24017 9.86194 6.46261C10.1462 5.93045 10.3667 5.36723 10.518 4.78374L10.9938 2.94989C11.0859 2.59473 11.3344 2.29611 11.6742 2.13239C11.9829 1.98365 12.3402 1.95918 12.6676 2.06435L12.8126 2.11093C13.3543 2.28495 13.7662 2.71364 13.9047 3.24753" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9949 5.22135L13.3322 9.26591C13.2491 9.77321 13.6401 10.2341 14.1536 10.2341H19.3347" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.3349 10.2342C20.3678 10.2342 21.1515 11.1662 20.9752 12.1852L20.2697 16.265C19.6974 19.5744 16.7263 22 13.2451 22H8.59644" stroke="currentColor" stroke-linecap="round"/>''',
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
