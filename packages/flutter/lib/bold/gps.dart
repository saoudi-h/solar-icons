// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `gps` icon in the bold style.
class GpsBoldIcon extends StatelessWidget {
  /// Creates the `gps` icon in the bold style.
  const GpsBoldIcon({
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
    name: 'gps',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2 12C2 12.3853 2.31236 12.6977 2.69767 12.6977H4.59041C4.92078 16.2509 7.74914 19.0792 11.3023 19.4096V21.3023C11.3023 21.6876 11.6147 22 12 22C12.3853 22 12.6977 21.6876 12.6977 21.3023V19.4096C16.2509 19.0792 19.0792 16.2509 19.4096 12.6977H21.3023C21.6876 12.6977 22 12.3853 22 12C22 11.6147 21.6876 11.3023 21.3023 11.3023H19.4096C19.0792 7.74914 16.2509 4.92078 12.6977 4.59041V2.69767C12.6977 2.31236 12.3853 2 12 2C11.6147 2 11.3023 2.31236 11.3023 2.69767V4.59041C7.74914 4.92078 4.92078 7.74914 4.59041 11.3023H2.69767C2.31236 11.3023 2 11.6147 2 12ZM8.51163 12C8.51163 10.0734 10.0734 8.51163 12 8.51163C13.9266 8.51163 15.4884 10.0734 15.4884 12C15.4884 13.9266 13.9266 15.4884 12 15.4884C10.0734 15.4884 8.51163 13.9266 8.51163 12Z" fill="currentColor"/>
<path d="M9.90698 12C9.90698 10.8441 10.8441 9.90698 12 9.90698C13.1559 9.90698 14.093 10.8441 14.093 12C14.093 13.1559 13.1559 14.093 12 14.093C10.8441 14.093 9.90698 13.1559 9.90698 12Z" fill="currentColor"/>''',
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
