// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `vanity` icon in the linear style.
class VanityLinearIcon extends StatelessWidget {
  /// Creates the `vanity` icon in the linear style.
  const VanityLinearIcon({
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
    name: 'vanity',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M19 22V21.5M5 22V21.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 21V15" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.00023 21H16.0002C18.8287 21 20.2429 21 21.1216 20.1213C21.8899 19.3529 21.9864 18.175 21.9985 16.0001C22.0016 15.4478 21.5525 15 21.0002 15H3.00023C2.44795 15 1.99889 15.4478 2.00197 16.0001C2.01408 18.175 2.11053 19.3529 2.87891 20.1213C3.75759 21 5.1718 21 8.00023 21Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.5 15.0001V6.13759C20.5 5.74965 20.5 5.55568 20.4822 5.42302C20.359 4.50707 19.8459 3.94522 18.9449 3.73964C18.8144 3.70987 18.5429 3.68518 18 3.63583C16.9981 3.54475 15.8169 3.19603 14.7687 2.81468C13.2754 2.2714 12.5288 1.99976 12 1.99976C11.4712 1.99976 10.7246 2.2714 9.23133 2.81468C8.18314 3.19603 7.00193 3.54475 6 3.63583C5.45709 3.68519 5.18562 3.70987 5.05512 3.73964C4.15409 3.94522 3.64099 4.50707 3.51784 5.42302C3.5 5.55568 3.5 5.74965 3.5 6.13759V15.0001" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 18L17 18" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 18L9 18" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 11L13.5 12M13.5 8L10.5 11M10.5 7L9.5 8" stroke="currentColor" stroke-linecap="round"/>''',
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
