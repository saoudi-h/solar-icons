// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-sort-horizontal` icon in the boldDuotone style.
class RoundSortHorizontalBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-sort-horizontal` icon in the boldDuotone style.
  const RoundSortHorizontalBoldDuotoneIcon({
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
    name: 'round-sort-horizontal',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.7545 11.4451C13.448 11.1664 12.9737 11.189 12.695 11.4955C12.4164 11.802 12.439 12.2763 12.7455 12.555L14.06 13.75H8C7.58579 13.75 7.25 14.0858 7.25 14.5C7.25 14.9142 7.58579 15.25 8 15.25H14.06L12.7455 16.4451C12.439 16.7237 12.4164 17.198 12.695 17.5045C12.9737 17.811 13.448 17.8336 13.7545 17.555L16.5045 15.055C16.6609 14.9128 16.75 14.7113 16.75 14.5C16.75 14.2887 16.6609 14.0872 16.5045 13.9451L13.7545 11.4451Z" fill="currentColor"/>
<path d="M11.2545 7.55496C11.561 7.27633 11.5836 6.80199 11.305 6.4955C11.0263 6.18901 10.552 6.16642 10.2455 6.44505L7.4955 8.94505C7.33914 9.08719 7.25 9.2887 7.25 9.50001C7.25 9.71131 7.33914 9.91282 7.4955 10.055L10.2455 12.555C10.552 12.8336 11.0263 12.811 11.305 12.5045C11.5836 12.198 11.561 11.7237 11.2545 11.4451L9.93996 10.25H16C16.4142 10.25 16.75 9.91422 16.75 9.50001C16.75 9.08579 16.4142 8.75001 16 8.75001H9.93996L11.2545 7.55496Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/>''',
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
