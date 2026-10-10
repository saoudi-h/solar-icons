// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `maximize-square` icon in the boldDuotone style.
class MaximizeSquareBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `maximize-square` icon in the boldDuotone style.
  const MaximizeSquareBoldDuotoneIcon({
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
    name: 'maximize-square',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M13.25 6.25C12.8358 6.25 12.5 6.58579 12.5 7C12.5 7.41421 12.8358 7.75 13.25 7.75H15.1893L11.4697 11.4697L7.75 15.1893V13.25C7.75 12.8358 7.41421 12.5 7 12.5C6.58579 12.5 6.25 12.8358 6.25 13.25V17C6.25 17.4142 6.58579 17.75 7 17.75H10.75C11.1642 17.75 11.5 17.4142 11.5 17C11.5 16.5858 11.1642 16.25 10.75 16.25H8.81066L12.5303 12.5303L16.25 8.81066V10.75C16.25 11.1642 16.5858 11.5 17 11.5C17.4142 11.5 17.75 11.1642 17.75 10.75V7C17.75 6.58579 17.4142 6.25 17 6.25H13.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" fill="currentColor"/>''',
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
