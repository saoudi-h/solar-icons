// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `double-alt-arrow-down` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00LjQzMDU3IDYuNTExOTJDNC43MDAxNCA2LjE5NzQzIDUuMTczNjEgNi4xNjEgNS40ODgxMSA2LjQzMDU3TDEyIDEyLjAxMjJMMTguNTExOSA2LjQzMDU3QzE4LjgyNjQgNi4xNjEgMTkuMjk5OSA2LjE5NzQzIDE5LjU2OTUgNi41MTE5MkMxOS44MzkgNi44MjY0MSAxOS44MDI2IDcuMjk5ODkgMTkuNDg4MSA3LjU2OTQ2TDEyLjQ4ODEgMTMuNTY5NUMxMi4yMDcyIDEzLjgxMDIgMTEuNzkyOCAxMy44MTAyIDExLjUxMTkgMTMuNTY5NUw0LjUxMTkyIDcuNTY5NDZDNC4xOTc0MyA3LjI5OTg5IDQuMTYxIDYuODI2NDEgNC40MzA1NyA2LjUxMTkyWk00LjQzMDU3IDEwLjUxMTlDNC43MDAxNCAxMC4xOTc0IDUuMTczNjEgMTAuMTYxIDUuNDg4MTEgMTAuNDMwNkwxMiAxNi4wMTIyTDE4LjUxMTkgMTAuNDMwNkMxOC44MjY0IDEwLjE2MSAxOS4yOTk5IDEwLjE5NzQgMTkuNTY5NSAxMC41MTE5QzE5LjgzOSAxMC44MjY0IDE5LjgwMjYgMTEuMjk5OSAxOS40ODgxIDExLjU2OTVMMTIuNDg4MSAxNy41Njk1QzEyLjIwNzIgMTcuODEwMiAxMS43OTI4IDE3LjgxMDIgMTEuNTExOSAxNy41Njk1TDQuNTExOTIgMTEuNTY5NUM0LjE5NzQzIDExLjI5OTkgNC4xNjEgMTAuODI2NCA0LjQzMDU3IDEwLjUxMTlaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class DoubleAltArrowDownOutlineIcon extends StatelessWidget {
  /// Creates the `double-alt-arrow-down` icon in the outline style.
  const DoubleAltArrowDownOutlineIcon({
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
    name: 'double-alt-arrow-down',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.43057 6.51192C4.70014 6.19743 5.17361 6.161 5.48811 6.43057L12 12.0122L18.5119 6.43057C18.8264 6.161 19.2999 6.19743 19.5695 6.51192C19.839 6.82641 19.8026 7.29989 19.4881 7.56946L12.4881 13.5695C12.2072 13.8102 11.7928 13.8102 11.5119 13.5695L4.51192 7.56946C4.19743 7.29989 4.161 6.82641 4.43057 6.51192ZM4.43057 10.5119C4.70014 10.1974 5.17361 10.161 5.48811 10.4306L12 16.0122L18.5119 10.4306C18.8264 10.161 19.2999 10.1974 19.5695 10.5119C19.839 10.8264 19.8026 11.2999 19.4881 11.5695L12.4881 17.5695C12.2072 17.8102 11.7928 17.8102 11.5119 17.5695L4.51192 11.5695C4.19743 11.2999 4.161 10.8264 4.43057 10.5119Z" fill="currentColor"/>''',
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
