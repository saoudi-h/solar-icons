// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `gps` icon in the boldDuotone style.
class GpsBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `gps` icon in the boldDuotone style.
  const GpsBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.75 22C12.75 22.4142 12.4142 22.75 12 22.75C11.5858 22.75 11.25 22.4142 11.25 22V19.9648C11.4969 19.9878 11.7471 20 12 20C12.2529 20 12.5031 19.9878 12.75 19.9648V22Z" fill="currentColor"/>
<path d="M12 8.51172C13.9265 8.51172 15.4882 10.0735 15.4883 12C15.4883 13.9266 13.9266 15.4883 12 15.4883C10.0735 15.4882 8.51172 13.9265 8.51172 12C8.51177 10.0735 10.0735 8.51177 12 8.51172Z" fill="currentColor"/>
<path d="M4.03516 11.25C4.0122 11.4969 4 11.7471 4 12C4 12.2529 4.0122 12.5031 4.03516 12.75H2C1.58579 12.75 1.25 12.4142 1.25 12C1.25 11.5858 1.58579 11.25 2 11.25H4.03516Z" fill="currentColor"/>
<path d="M22 11.25C22.4142 11.25 22.75 11.5858 22.75 12C22.75 12.4142 22.4142 12.75 22 12.75H19.9648C19.9878 12.5031 20 12.2529 20 12C20 11.7471 19.9878 11.4969 19.9648 11.25H22Z" fill="currentColor"/>
<path d="M12 1.25C12.4142 1.25 12.75 1.58579 12.75 2V4.03516C12.5031 4.0122 12.2529 4 12 4C11.7471 4 11.4969 4.0122 11.25 4.03516V2C11.25 1.58579 11.5858 1.25 12 1.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 12C20 16.4183 16.4183 20 12 20C7.58172 20 4 16.4183 4 12C4 7.58172 7.58172 4 12 4C16.4183 4 20 7.58172 20 12Z" fill="currentColor"/>''',
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
