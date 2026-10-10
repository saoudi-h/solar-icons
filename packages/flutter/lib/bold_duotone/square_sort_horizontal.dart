// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-sort-horizontal` icon in the boldDuotone style.
class SquareSortHorizontalBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `square-sort-horizontal` icon in the boldDuotone style.
  const SquareSortHorizontalBoldDuotoneIcon({
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
    name: 'square-sort-horizontal',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11.2545 11.445C11.561 11.7237 11.5836 12.198 11.305 12.5045C11.0263 12.811 10.552 12.8336 10.2455 12.555L7.4955 10.055C7.33914 9.91282 7.25 9.71131 7.25 9.50001C7.25 9.2887 7.33914 9.08719 7.4955 8.94505L10.2455 6.44505C10.552 6.16642 11.0263 6.18901 11.305 6.4955C11.5836 6.80199 11.561 7.27633 11.2545 7.55496L9.93996 8.75L16 8.75C16.4142 8.75 16.75 9.08579 16.75 9.5C16.75 9.91422 16.4142 10.25 16 10.25L9.93996 10.25L11.2545 11.445Z" fill="currentColor"/>
<path d="M12.7455 16.4451C12.439 16.7237 12.4164 17.198 12.695 17.5045C12.9737 17.811 13.448 17.8336 13.7545 17.555L16.5045 15.055C16.6609 14.9128 16.75 14.7113 16.75 14.5C16.75 14.2887 16.6609 14.0872 16.5045 13.945L13.7545 11.4451C13.448 11.1664 12.9737 11.189 12.695 11.4955C12.4164 11.802 12.439 12.2763 12.7455 12.555L14.06 13.75H8C7.58579 13.75 7.25 14.0858 7.25 14.5C7.25 14.9142 7.58579 15.25 8 15.25L14.06 15.25L12.7455 16.4451Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355Z" fill="currentColor"/>''',
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
