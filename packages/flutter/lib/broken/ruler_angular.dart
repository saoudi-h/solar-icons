// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `ruler-angular` icon in the broken style.
class RulerAngularBrokenIcon extends StatelessWidget {
  /// Creates the `ruler-angular` icon in the broken style.
  const RulerAngularBrokenIcon({
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
    name: 'ruler-angular',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 9H11C10.0572 9 9.58579 9 9.29289 9.29289C9 9.58579 9 10.0572 9 11V18.5C9 19.9045 9 20.6067 8.66294 21.1111C8.51702 21.3295 8.32952 21.517 8.11114 21.6629C7.60669 22 6.90446 22 5.5 22C4.09554 22 3.39331 22 2.88886 21.6629C2.67048 21.517 2.48298 21.3295 2.33706 21.1111C2 20.6067 2 19.9045 2 18.5V6C2 4.11438 2 3.17157 2.58579 2.58579C3.17157 2 4.11438 2 6 2H18.5C19.9045 2 20.6067 2 21.1111 2.33706C21.3295 2.48298 21.517 2.67048 21.6629 2.88886C22 3.39331 22 4.09554 22 5.5C22 6.90446 22 7.60669 21.6629 8.11114C21.517 8.32952 21.3295 8.51702 21.1111 8.66294C20.6067 9 19.9045 9 18.5 9H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 2L12 4M18 2L18 4M9 2L9 5M15 2L15 5" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12H4M2 18H4M2 15L5 15M2 9L5 9" stroke="currentColor" stroke-linecap="round"/>''',
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
