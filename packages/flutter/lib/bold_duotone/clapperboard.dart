// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `clapperboard` icon in the boldDuotone style.
class ClapperboardBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `clapperboard` icon in the boldDuotone style.
  const ClapperboardBoldDuotoneIcon({
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
    name: 'clapperboard',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.0955 2.00445C6.62176 2.03072 4.71666 2.2121 3.46429 3.46447C2.60663 4.32213 2.25125 5.48593 2.104 7.25002H6.59844L10.0955 2.00445Z" fill="currentColor"/>
<path d="M21.8956 7.25002C21.7484 5.48593 21.393 4.32213 20.5354 3.46447C19.938 2.86714 19.1922 2.51345 18.1985 2.30403L14.9012 7.25002H21.8956Z" fill="currentColor"/>
<path d="M16.5399 2.08783C15.3291 2 13.845 2 11.9998 2C11.9668 2 11.934 2 11.9012 2L8.40121 7.25002H13.0984L16.5399 2.08783Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2.02644 8.75C2 9.68872 2 10.7632 2 12C2 16.714 2 19.071 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.071 22 16.714 22 12C22 10.7632 22 9.68872 21.9736 8.75H2.02644Z" fill="currentColor"/>''',
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
