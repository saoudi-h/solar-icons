// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `compass-big` icon in the bold style.
class CompassBigBoldIcon extends StatelessWidget {
  /// Creates the `compass-big` icon in the bold style.
  const CompassBigBoldIcon({
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
    name: 'compass-big',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.55428 21.5288C5.35132 22.75 8.49749 21.4915 14.7898 18.9746C16.132 18.4377 16.8031 18.1693 17.3295 17.7076C17.4637 17.59 17.59 17.4637 17.7076 17.3295C18.1693 16.8031 18.4377 16.132 18.9746 14.7898C21.4915 8.49749 22.75 5.35132 21.5288 3.55428C21.2393 3.1282 20.8718 2.7607 20.4457 2.47117C18.6487 1.25001 15.5025 2.50848 9.21017 5.02542C7.86802 5.56227 7.19695 5.8307 6.67048 6.29238C6.53633 6.41002 6.41002 6.53633 6.29238 6.67048C5.8307 7.19695 5.56228 7.86802 5.02542 9.21017C2.50848 15.5025 1.25001 18.6487 2.47117 20.4457C2.76071 20.8718 3.1282 21.2393 3.55428 21.5288ZM8.25 12C8.25 9.92893 9.92893 8.25 12 8.25C14.0711 8.25 15.75 9.92893 15.75 12C15.75 14.0711 14.0711 15.75 12 15.75C9.92893 15.75 8.25 14.0711 8.25 12ZM9.75 12C9.75 10.7574 10.7574 9.75 12 9.75C13.2426 9.75 14.25 10.7574 14.25 12C14.25 13.2426 13.2426 14.25 12 14.25C10.7574 14.25 9.75 13.2426 9.75 12Z" fill="currentColor"/>''',
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
