// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-sort-vertical` icon in the boldDuotone style.
class RoundSortVerticalBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-sort-vertical` icon in the boldDuotone style.
  const RoundSortVerticalBoldDuotoneIcon({
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
    name: 'round-sort-vertical',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11.4451 10.2455C11.1664 10.552 11.189 11.0263 11.4955 11.305C11.802 11.5836 12.2763 11.561 12.555 11.2545L13.75 9.93995V16C13.75 16.4142 14.0858 16.75 14.5 16.75C14.9142 16.75 15.25 16.4142 15.25 16V9.93995L16.4451 11.2545C16.7237 11.561 17.198 11.5836 17.5045 11.305C17.811 11.0263 17.8336 10.552 17.555 10.2455L15.055 7.4955C14.9128 7.33914 14.7113 7.25 14.5 7.25C14.2887 7.25 14.0872 7.33914 13.945 7.4955L11.4451 10.2455Z" fill="currentColor"/>
<path d="M7.55496 12.7455C7.27633 12.439 6.80199 12.4164 6.4955 12.695C6.18901 12.9737 6.16642 13.448 6.44505 13.7545L8.94505 16.5045C9.08719 16.6609 9.2887 16.75 9.50001 16.75C9.71131 16.75 9.91282 16.6609 10.055 16.5045L12.555 13.7545C12.8336 13.448 12.811 12.9737 12.5045 12.695C12.198 12.4164 11.7237 12.439 11.4451 12.7455L10.25 14.06V8C10.25 7.58579 9.91422 7.25 9.50001 7.25C9.08579 7.25 8.75001 7.58579 8.75001 8L8.75001 14.06L7.55496 12.7455Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12Z" fill="currentColor"/>''',
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
