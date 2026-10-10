// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `text-bold-square` icon in the boldDuotone style.
class TextBoldSquareBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `text-bold-square` icon in the boldDuotone style.
  const TextBoldSquareBoldDuotoneIcon({
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
    name: 'text-bold-square',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M9.52174 5.25C8.26709 5.25 7.25 6.26709 7.25 7.52174V16.8235C7.25 17.8875 8.11251 18.75 9.17647 18.75H13C15.0711 18.75 16.75 17.0711 16.75 15C16.75 13.5268 15.9004 12.2519 14.6645 11.6387C15.3356 10.9612 15.75 10.029 15.75 9C15.75 6.92893 14.0711 5.25 12 5.25H9.52174ZM14.25 9C14.25 10.2426 13.2426 11.25 12 11.25H8.75V7.52174C8.75 7.09552 9.09552 6.75 9.52174 6.75H12C13.2426 6.75 14.25 7.75736 14.25 9ZM8.75 16.8235V12.75H13C14.2426 12.75 15.25 13.7574 15.25 15C15.25 16.2426 14.2426 17.25 13 17.25H9.17647C8.94094 17.25 8.75 17.0591 8.75 16.8235Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447Z" fill="currentColor"/>''',
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
