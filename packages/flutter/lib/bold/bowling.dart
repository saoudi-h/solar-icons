// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bowling` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyMkMxNy41MjI4IDIyIDIyIDE3LjUyMjggMjIgMTJDMjIgNi40NzcxNSAxNy41MjI4IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJaTTEzLjUgMTJDMTMuNSAxMS4xNzE2IDEyLjgyODQgMTAuNSAxMiAxMC41QzExLjE3MTYgMTAuNSAxMC41IDExLjE3MTYgMTAuNSAxMkMxMC41IDEyLjgyODQgMTEuMTcxNiAxMy41IDEyIDEzLjVDMTIuODI4NCAxMy41IDEzLjUgMTIuODI4NCAxMy41IDEyWk0xMiA1LjVDMTIuODI4NCA1LjUgMTMuNSA2LjE3MTU3IDEzLjUgN0MxMy41IDcuODI4NDMgMTIuODI4NCA4LjUgMTIgOC41QzExLjE3MTYgOC41IDEwLjUgNy44Mjg0MyAxMC41IDdDMTAuNSA2LjE3MTU3IDExLjE3MTYgNS41IDEyIDUuNVpNOS41IDkuNUM5LjUgOC42NzE1NyA4LjgyODQzIDggOCA4QzcuMTcxNTcgOCA2LjUgOC42NzE1NyA2LjUgOS41QzYuNSAxMC4zMjg0IDcuMTcxNTcgMTEgOCAxMUM4LjgyODQzIDExIDkuNSAxMC4zMjg0IDkuNSA5LjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class BowlingBoldIcon extends StatelessWidget {
  /// Creates the `bowling` icon in the bold style.
  const BowlingBoldIcon({
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
    name: 'bowling',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22ZM13.5 12C13.5 11.1716 12.8284 10.5 12 10.5C11.1716 10.5 10.5 11.1716 10.5 12C10.5 12.8284 11.1716 13.5 12 13.5C12.8284 13.5 13.5 12.8284 13.5 12ZM12 5.5C12.8284 5.5 13.5 6.17157 13.5 7C13.5 7.82843 12.8284 8.5 12 8.5C11.1716 8.5 10.5 7.82843 10.5 7C10.5 6.17157 11.1716 5.5 12 5.5ZM9.5 9.5C9.5 8.67157 8.82843 8 8 8C7.17157 8 6.5 8.67157 6.5 9.5C6.5 10.3284 7.17157 11 8 11C8.82843 11 9.5 10.3284 9.5 9.5Z" fill="currentColor"/>''',
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
