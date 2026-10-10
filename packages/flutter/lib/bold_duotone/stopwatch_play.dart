// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `stopwatch-play` icon in the boldDuotone style.
class StopwatchPlayBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `stopwatch-play` icon in the boldDuotone style.
  const StopwatchPlayBoldDuotoneIcon({
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
    name: 'stopwatch-play',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.1523 10.1494C10.6332 9.78846 11.1698 10.1145 12.2422 10.7666C12.5204 10.9358 12.7891 11.1088 13.0264 11.2754C13.2967 11.4652 13.5911 11.6926 13.8877 11.9346C14.9626 12.8114 15.5 13.2501 15.5 14C15.5 14.7499 14.9626 15.1886 13.8877 16.0654C13.5911 16.3074 13.2967 16.5348 13.0264 16.7246C12.7891 16.8912 12.5204 17.0642 12.2422 17.2334C11.1698 17.8855 10.6332 18.2115 10.1523 17.8506C9.67143 17.4896 9.62745 16.7332 9.54004 15.2217C9.51533 14.7944 9.5 14.3755 9.5 14C9.5 13.6245 9.51533 13.2056 9.54004 12.7783C9.62745 11.2668 9.67143 10.5104 10.1523 10.1494Z" fill="currentColor"/>
<path d="M14 2C14.4142 2 14.75 2.33579 14.75 2.75C14.75 3.16421 14.4142 3.5 14 3.5H10C9.58579 3.5 9.25 3.16421 9.25 2.75C9.25 2.33579 9.58579 2 10 2H14Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M12 23C16.9706 23 21 18.9706 21 14C21 9.02944 16.9706 5 12 5C7.02944 5 3 9.02944 3 14C3 18.9706 7.02944 23 12 23Z" fill="currentColor"/>
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
