// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `buildings-2` icon in the broken style.
class Buildings2BrokenIcon extends StatelessWidget {
  /// Creates the `buildings-2` icon in the broken style.
  const Buildings2BrokenIcon({
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
    name: 'buildings-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 22L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 22V6C17 4.11438 17 3.17157 16.4142 2.58579C15.8284 2 14.8856 2 13 2H11C9.11438 2 8.17157 2 7.58579 2.58579C7 3.17157 7 4.11438 7 6V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 11.5C21 10.0955 21 9.39331 20.6629 8.88886C20.517 8.67048 20.3295 8.48298 20.1111 8.33706C19.6067 8 18.9045 8 17.5 8M21 22V15.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 22V20M6.5 8C5.09554 8 4.39331 8 3.88886 8.33706C3.67048 8.48298 3.48298 8.67048 3.33706 8.88886C3 9.39331 3 10.0955 3 11.5V16" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 22V19" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 5H14" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 14H10.5M14 14H12.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 8H13.5M10 8H11.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 11H14" stroke="currentColor" stroke-linecap="round"/>''',
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
