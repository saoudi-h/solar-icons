// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bedside-table` icon in the boldDuotone style.
class BedsideTableBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `bedside-table` icon in the boldDuotone style.
  const BedsideTableBoldDuotoneIcon({
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
    name: 'bedside-table',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21.9746 14.75C21.9085 16.7712 21.6717 17.9846 20.8281 18.8281C20.5237 19.1325 20.1713 19.3586 19.75 19.5254V22C19.75 22.4142 19.4142 22.75 19 22.75C18.5859 22.7499 18.25 22.4142 18.25 22V19.8711C17.1801 19.9998 15.8063 20 14 20H10C8.19372 20 6.81986 19.9998 5.75 19.8711V22C5.75 22.4142 5.41421 22.75 5 22.75C4.58586 22.7499 4.25 22.4142 4.25 22V19.5254C3.82861 19.3586 3.47629 19.1325 3.17188 18.8281C2.3284 17.9846 2.0925 16.7711 2.02637 14.75L2 14H21.9746V14.75ZM12 16C11.4478 16.0001 11 16.4478 11 17C11 17.5522 11.4478 17.9999 12 18C12.5523 18 13 17.5523 13 17C13 16.4477 12.5523 16 12 16Z" fill="currentColor"/>
<path d="M12 10C12.5523 10 13 10.4477 13 11C13 11.5523 12.5523 12 12 12C11.4477 12 11 11.5523 11 11C11 10.4477 11.4477 10 12 10Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C17.7711 2 19.6565 2.00038 20.8281 3.17188C21.6717 4.01542 21.9085 5.22882 21.9746 7.25L22 8H2L2.02637 7.25C2.0925 5.2289 2.3284 4.01541 3.17188 3.17188C4.34343 2.00032 6.22887 2 10 2H14ZM12 4C11.4477 4 11 4.44771 11 5C11 5.55228 11.4477 6 12 6C12.5523 6 13 5.55228 13 5C13 4.44771 12.5523 4 12 4Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M2 10C2 9.55807 2.00189 8.39203 2.00377 8H22C22.0019 8.39203 22 9.55807 22 10V12C22 12.4419 22 13.608 21.9981 14H2.00189C2 13.608 2 12.4419 2 12V10Z" fill="currentColor"/>''',
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
