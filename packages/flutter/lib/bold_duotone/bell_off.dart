// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bell-off` icon in the boldDuotone style.
class BellOffBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bell-off` icon in the boldDuotone style.
  const BellOffBoldDuotoneIcon({
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
    name: 'bell-off',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.7568 18.5449C16.1059 20.55 14.2221 21.9999 12 22C9.77786 22 7.8941 20.5501 7.24316 18.5449C10.3886 19.1352 13.6114 19.1352 16.7568 18.5449Z" fill="currentColor"/>
<path d="M13.9287 8.25C14.2211 8.25012 14.4848 8.43274 14.5967 8.71289C14.7086 8.99315 14.6463 9.31578 14.4395 9.53027L11.8174 12.25H13.9287C14.3279 12.2502 14.6514 12.5859 14.6514 13C14.6514 13.4141 14.3279 13.7498 13.9287 13.75H10.0713C9.77901 13.7498 9.51518 13.5672 9.40332 13.2871C9.29142 13.0069 9.35375 12.6842 9.56055 12.4697L12.1826 9.75H10.0713C9.67214 9.74973 9.34863 9.41405 9.34863 9C9.34863 8.58595 9.67214 8.25027 10.0713 8.25H13.9287Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.7491 9V9.7041C18.7491 10.5491 18.9903 11.3752 19.4422 12.0782L20.5496 13.8012C21.5612 15.3749 20.789 17.5139 19.0296 18.0116C14.4273 19.3134 9.57274 19.3134 4.97036 18.0116C3.21105 17.5139 2.43882 15.3749 3.45036 13.8012L4.5578 12.0782C5.00972 11.3752 5.25087 10.5491 5.25087 9.7041V9C5.25087 5.13401 8.27256 2 12 2C15.7274 2 18.7491 5.13401 18.7491 9Z" fill="currentColor"/>''',
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
