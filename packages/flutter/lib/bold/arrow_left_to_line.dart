// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-left-to-line` icon in the bold style.
class ArrowLeftToLineBoldIcon extends StatelessWidget {
  /// Creates the `arrow-left-to-line` icon in the bold style.
  const ArrowLeftToLineBoldIcon({
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
    name: 'arrow-left-to-line',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M3.75 20C3.75 20.4142 3.41421 20.75 3 20.75C2.58579 20.75 2.25 20.4142 2.25 20L2.25 4C2.25 3.58579 2.58579 3.25 3 3.25C3.41421 3.25 3.75 3.58579 3.75 4L3.75 20Z" fill="currentColor"/>
<path d="M21.75 12C21.75 12.4142 21.4142 12.75 21 12.75L9.93164 12.75L12.8809 15.4463C13.1865 15.7257 13.208 16.2001 12.9287 16.5059C12.6493 16.8115 12.1748 16.833 11.8691 16.5537L7.49414 12.5537C7.33877 12.4116 7.25 12.2105 7.25 12C7.25003 11.7895 7.33876 11.5884 7.49414 11.4463L11.8691 7.44629C12.1748 7.16706 12.6493 7.18858 12.9287 7.49414C13.208 7.79983 13.1864 8.27427 12.8809 8.55371L9.93164 11.25L21 11.25C21.4142 11.25 21.7499 11.5858 21.75 12Z" fill="currentColor"/>''',
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
