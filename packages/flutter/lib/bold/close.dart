// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `close` icon in the bold style.
class CloseBoldIcon extends StatelessWidget {
  /// Creates the `close` icon in the bold style.
  const CloseBoldIcon({
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
    name: 'close',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M18.4765 4.46967C18.7694 4.17683 19.2442 4.1768 19.5371 4.46967C19.8299 4.76255 19.8299 5.23734 19.5371 5.53022L13.0634 12.0029L19.5302 18.4697C19.823 18.7626 19.8231 19.2374 19.5302 19.5302C19.2374 19.8231 18.7626 19.823 18.4697 19.5302L12.0029 13.0634L5.53705 19.5302C5.24417 19.823 4.76938 19.823 4.47651 19.5302C4.18363 19.2373 4.18367 18.7626 4.47651 18.4697L10.9423 12.0029L4.46967 5.53022C4.17678 5.23732 4.17678 4.76256 4.46967 4.46967C4.76256 4.17678 5.23732 4.17678 5.53022 4.46967L12.0029 10.9423L18.4765 4.46967Z" fill="currentColor"/>''',
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
