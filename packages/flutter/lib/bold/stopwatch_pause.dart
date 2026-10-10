// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `stopwatch-pause` icon in the bold style.
class StopwatchPauseBoldIcon extends StatelessWidget {
  /// Creates the `stopwatch-pause` icon in the bold style.
  const StopwatchPauseBoldIcon({
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
    name: 'stopwatch-pause',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M21 13.75C21 18.7206 16.9706 22.75 12 22.75C7.02944 22.75 3 18.7206 3 13.75C3 8.77944 7.02944 4.75 12 4.75C16.9706 4.75 21 8.77944 21 13.75ZM11 16.25V11.25C11 10.7841 11 10.5511 10.9239 10.3673C10.8224 10.1223 10.6277 9.92761 10.3827 9.82612C10.1989 9.75 9.96594 9.75 9.5 9.75C9.03406 9.75 8.80109 9.75 8.61732 9.82612C8.37229 9.92761 8.17761 10.1223 8.07612 10.3673C8 10.5511 8 10.7841 8 11.25V16.25C8 16.7159 8 16.9489 8.07612 17.1327C8.17761 17.3777 8.37229 17.5724 8.61732 17.6739C8.80109 17.75 9.03406 17.75 9.5 17.75C9.96594 17.75 10.1989 17.75 10.3827 17.6739C10.6277 17.5724 10.8224 17.3777 10.9239 17.1327C11 16.9489 11 16.7159 11 16.25ZM16 16.25V11.25C16 10.7841 16 10.5511 15.9239 10.3673C15.8224 10.1223 15.6277 9.92761 15.3827 9.82612C15.1989 9.75 14.9659 9.75 14.5 9.75C14.0341 9.75 13.8011 9.75 13.6173 9.82612C13.3723 9.92761 13.1776 10.1223 13.0761 10.3673C13 10.5511 13 10.7841 13 11.25V16.25C13 16.7159 13 16.9489 13.0761 17.1327C13.1776 17.3777 13.3723 17.5724 13.6173 17.6739C13.8011 17.75 14.0341 17.75 14.5 17.75C14.9659 17.75 15.1989 17.75 15.3827 17.6739C15.6277 17.5724 15.8224 17.3777 15.9239 17.1327C16 16.9489 16 16.7159 16 16.25Z" fill="currentColor"/>
<path d="M10 2C9.58579 2 9.25 2.33579 9.25 2.75C9.25 3.16421 9.58579 3.5 10 3.5H14C14.4142 3.5 14.75 3.16421 14.75 2.75C14.75 2.33579 14.4142 2 14 2H10Z" fill="currentColor"/>''',
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
