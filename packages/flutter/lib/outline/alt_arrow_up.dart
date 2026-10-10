// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `alt-arrow-up` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS41MTE5IDguNDMwNTZDMTEuNzkyOCA4LjE4OTgxIDEyLjIwNzIgOC4xODk4MSAxMi40ODgxIDguNDMwNTZMMTkuNDg4MSAxNC40MzA2QzE5LjgwMjYgMTQuNzAwMSAxOS44MzkgMTUuMTczNiAxOS41Njk1IDE1LjQ4ODFDMTkuMjk5OSAxNS44MDI2IDE4LjgyNjQgMTUuODM5IDE4LjUxMTkgMTUuNTY5NEwxMiA5Ljk4NzgxTDUuNDg4MTEgMTUuNTY5NEM1LjE3MzYxIDE1LjgzOSA0LjcwMDE0IDE1LjgwMjYgNC40MzA1NyAxNS40ODgxQzQuMTYxIDE1LjE3MzYgNC4xOTc0MyAxNC43MDAxIDQuNTExOTIgMTQuNDMwNkwxMS41MTE5IDguNDMwNTZaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class AltArrowUpOutlineIcon extends StatelessWidget {
  /// Creates the `alt-arrow-up` icon in the outline style.
  const AltArrowUpOutlineIcon({
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
    name: 'alt-arrow-up',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M11.5119 8.43056C11.7928 8.18981 12.2072 8.18981 12.4881 8.43056L19.4881 14.4306C19.8026 14.7001 19.839 15.1736 19.5695 15.4881C19.2999 15.8026 18.8264 15.839 18.5119 15.5694L12 9.98781L5.48811 15.5694C5.17361 15.839 4.70014 15.8026 4.43057 15.4881C4.161 15.1736 4.19743 14.7001 4.51192 14.4306L11.5119 8.43056Z" fill="currentColor"/>''',
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
