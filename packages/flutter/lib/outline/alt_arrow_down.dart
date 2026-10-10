// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `alt-arrow-down` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00LjQzMDU3IDguNTExOTJDNC43MDAxNCA4LjE5NzQzIDUuMTczNjEgOC4xNjEgNS40ODgxMSA4LjQzMDU3TDEyIDE0LjAxMjJMMTguNTExOSA4LjQzMDU3QzE4LjgyNjQgOC4xNjEwMSAxOS4yOTk5IDguMTk3NDMgMTkuNTY5NSA4LjUxMTkyQzE5LjgzOSA4LjgyNjQyIDE5LjgwMjYgOS4yOTk4OSAxOS40ODgxIDkuNTY5NDZMMTIuNDg4MSAxNS41Njk1QzEyLjIwNzIgMTUuODEwMiAxMS43OTI4IDE1LjgxMDIgMTEuNTExOSAxNS41Njk1TDQuNTExOTIgOS41Njk0NkM0LjE5NzQzIDkuMjk5ODkgNC4xNjEgOC44MjY0MSA0LjQzMDU3IDguNTExOTJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class AltArrowDownOutlineIcon extends StatelessWidget {
  /// Creates the `alt-arrow-down` icon in the outline style.
  const AltArrowDownOutlineIcon({
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
    name: 'alt-arrow-down',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.43057 8.51192C4.70014 8.19743 5.17361 8.161 5.48811 8.43057L12 14.0122L18.5119 8.43057C18.8264 8.16101 19.2999 8.19743 19.5695 8.51192C19.839 8.82642 19.8026 9.29989 19.4881 9.56946L12.4881 15.5695C12.2072 15.8102 11.7928 15.8102 11.5119 15.5695L4.51192 9.56946C4.19743 9.29989 4.161 8.82641 4.43057 8.51192Z" fill="currentColor"/>''',
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
