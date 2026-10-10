// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `double-alt-arrow-up` icon in the outline style.
class DoubleAltArrowUpOutlineIcon extends StatelessWidget {
  /// Creates the `double-alt-arrow-up` icon in the outline style.
  const DoubleAltArrowUpOutlineIcon({
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
    name: 'double-alt-arrow-up',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5119 6.43056C11.7928 6.18981 12.2072 6.18981 12.4881 6.43056L19.4881 12.4306C19.8026 12.7001 19.839 13.1736 19.5695 13.4881C19.2999 13.8026 18.8264 13.839 18.5119 13.5694L12 7.98781L5.48811 13.5694C5.17361 13.839 4.70014 13.8026 4.43057 13.4881C4.161 13.1736 4.19743 12.7001 4.51192 12.4306L11.5119 6.43056ZM4.51192 16.4306L11.5119 10.4306C11.7928 10.1898 12.2072 10.1898 12.4881 10.4306L19.4881 16.4306C19.8026 16.7001 19.839 17.1736 19.5695 17.4881C19.2999 17.8026 18.8264 17.839 18.5119 17.5694L12 11.9878L5.48811 17.5694C5.17361 17.839 4.70014 17.8026 4.43057 17.4881C4.161 17.1736 4.19743 16.7001 4.51192 16.4306Z" fill="currentColor"/>''',
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
