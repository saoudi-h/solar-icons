// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `mouse-minimalistic` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00LjI1IDlDNC4yNSA0LjcxOTc5IDcuNzE5NzkgMS4yNSAxMiAxLjI1QzE2LjI4MDIgMS4yNSAxOS43NSA0LjcxOTc5IDE5Ljc1IDlWMTVDMTkuNzUgMTkuMjgwMiAxNi4yODAyIDIyLjc1IDEyIDIyLjc1QzcuNzE5NzkgMjIuNzUgNC4yNSAxOS4yODAyIDQuMjUgMTVWOVpNMTIgMi43NUM4LjU0ODIyIDIuNzUgNS43NSA1LjU0ODIyIDUuNzUgOVYxNUM1Ljc1IDE4LjQ1MTggOC41NDgyMiAyMS4yNSAxMiAyMS4yNUMxNS40NTE4IDIxLjI1IDE4LjI1IDE4LjQ1MTggMTguMjUgMTVWOUMxOC4yNSA1LjU0ODIyIDE1LjQ1MTggMi43NSAxMiAyLjc1Wk0xMiA0LjI1QzEyLjQxNDIgNC4yNSAxMi43NSA0LjU4NTc5IDEyLjc1IDVWOEMxMi43NSA4LjQxNDIxIDEyLjQxNDIgOC43NSAxMiA4Ljc1QzExLjU4NTggOC43NSAxMS4yNSA4LjQxNDIxIDExLjI1IDhWNUMxMS4yNSA0LjU4NTc5IDExLjU4NTggNC4yNSAxMiA0LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MouseMinimalisticOutlineIcon extends StatelessWidget {
  /// Creates the `mouse-minimalistic` icon in the outline style.
  const MouseMinimalisticOutlineIcon({
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
    name: 'mouse-minimalistic',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.25 9C4.25 4.71979 7.71979 1.25 12 1.25C16.2802 1.25 19.75 4.71979 19.75 9V15C19.75 19.2802 16.2802 22.75 12 22.75C7.71979 22.75 4.25 19.2802 4.25 15V9ZM12 2.75C8.54822 2.75 5.75 5.54822 5.75 9V15C5.75 18.4518 8.54822 21.25 12 21.25C15.4518 21.25 18.25 18.4518 18.25 15V9C18.25 5.54822 15.4518 2.75 12 2.75ZM12 4.25C12.4142 4.25 12.75 4.58579 12.75 5V8C12.75 8.41421 12.4142 8.75 12 8.75C11.5858 8.75 11.25 8.41421 11.25 8V5C11.25 4.58579 11.5858 4.25 12 4.25Z" fill="currentColor"/>''',
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
