// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `like` icon in the linear style.
class LikeLinearIcon extends StatelessWidget {
  /// Creates the `like` icon in the linear style.
  const LikeLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3 21.5127V10.2341" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 10.2342L3.9716 21.4707C3.99621 21.7553 3.77207 22 3.48671 22C3.21791 22 3 21.7818 3 21.5127" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9951 5.22145C14.1027 4.56438 14.072 3.89203 13.9048 3.24756" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.59609 22C7.73231 22 7.01201 21.3386 6.93752 20.4771L6.12535 11.0844C6.07919 10.5506 6.29223 10.027 6.69789 9.67749L8.13663 8.43769C8.80416 7.86246 9.44635 7.24017 9.8617 6.46261C10.146 5.93045 10.3664 5.36723 10.5178 4.78374L10.9935 2.94989C11.0856 2.59473 11.3342 2.29611 11.6739 2.13239C11.9826 1.98365 12.3399 1.95918 12.6673 2.06435L12.8123 2.11093C13.354 2.28495 13.7659 2.71364 13.9044 3.24753" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.9951 5.22135L13.3325 9.26591C13.2493 9.77321 13.6404 10.2341 14.1539 10.2341H19.335" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.3351 10.2342C20.3681 10.2342 21.1517 11.1662 20.9755 12.1852L20.27 16.265C19.6976 19.5744 16.7266 22 13.2453 22H8.59668" stroke="currentColor" stroke-linecap="round"/>''',
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
