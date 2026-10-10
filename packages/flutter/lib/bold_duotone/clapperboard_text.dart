// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `clapperboard-text` icon in the boldDuotone style.
class ClapperboardTextBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `clapperboard-text` icon in the boldDuotone style.
  const ClapperboardTextBoldDuotoneIcon({
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
    name: 'clapperboard-text',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 16.75C12.4142 16.75 12.75 17.0858 12.75 17.5C12.75 17.9142 12.4142 18.25 12 18.25H6.5C6.08579 18.25 5.75 17.9142 5.75 17.5C5.75 17.0858 6.08579 16.75 6.5 16.75H12Z" fill="currentColor"/>
<path d="M14.5 13.25C14.9142 13.25 15.25 13.5858 15.25 14C15.25 14.4142 14.9142 14.75 14.5 14.75H6.5C6.08579 14.75 5.75 14.4142 5.75 14C5.75 13.5858 6.08579 13.25 6.5 13.25H14.5Z" fill="currentColor"/>
<path d="M6.59863 7.25H2.10449C2.25173 5.48602 2.6073 4.32249 3.46484 3.46484C4.71718 2.21251 6.62216 2.03116 10.0957 2.00488L6.59863 7.25Z" fill="currentColor"/>
<path d="M12 2C13.845 2 15.3293 2.00009 16.54 2.08789L13.0986 7.25H8.40137L11.9014 2H12Z" fill="currentColor"/>
<path d="M18.1992 2.30371C19.1928 2.51314 19.9388 2.86754 20.5361 3.46484C21.3936 4.32248 21.7493 5.48613 21.8965 7.25H14.9014L18.1992 2.30371Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 10.7632 2 9.68872 2.02644 8.75H21.9736C22 9.68872 22 10.7632 22 12C22 16.714 22 19.071 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.071 2 16.714 2 12Z" fill="currentColor"/>''',
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
