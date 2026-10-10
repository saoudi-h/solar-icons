// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `minimize-square-3` icon in the boldDuotone style.
class MinimizeSquare3BoldDuotoneIcon extends StatelessWidget {
  /// Creates the `minimize-square-3` icon in the boldDuotone style.
  const MinimizeSquare3BoldDuotoneIcon({
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
    name: 'minimize-square-3',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M6.5 12.9999C8.62132 12.9999 9.68181 13.0001 10.3408 13.6591C10.9998 14.3181 11 15.3786 11 17.4999C11 19.6213 10.9998 20.6818 10.3408 21.3408C9.68181 21.9998 8.62132 21.9999 6.5 21.9999C4.37868 21.9999 3.31819 21.9998 2.65918 21.3408C2.00017 20.6818 2 19.6213 2 17.4999C2 15.3786 2.00017 14.3181 2.65918 13.6591C3.31819 13.0001 4.37868 12.9999 6.5 12.9999Z" fill="currentColor"/>
<path d="M16.4697 6.46967C16.7626 6.17678 17.2374 6.17678 17.5303 6.46967C17.8232 6.76256 17.8232 7.23732 17.5303 7.53022L13.8105 11.2499H15.75C16.1642 11.2499 16.5 11.5857 16.5 11.9999C16.5 12.4142 16.1642 12.7499 15.75 12.7499H12C11.5858 12.7499 11.25 12.4142 11.25 11.9999V8.24994C11.25 7.83573 11.5858 7.49994 12 7.49994C12.4142 7.49994 12.75 7.83573 12.75 8.24994V10.1894L16.4697 6.46967Z" fill="currentColor"/>''',
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
