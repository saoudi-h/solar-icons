// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `temperature` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNy41IDE2LjVDMTcuNSAxOS41Mzc2IDE1LjAzNzYgMjIgMTIgMjJDOC45NjI0MyAyMiA2LjUgMTkuNTM3NiA2LjUgMTYuNUM2LjUgMTQuNzYzNiA3LjMwNDY1IDEzLjIxNTIgOC41NjE0MSAxMi4yMDcyQzguODI1MDUgMTEuOTk1NyA5IDExLjY4NTcgOSAxMS4zNDc3VjVDOSAzLjM0MzE1IDEwLjM0MzEgMiAxMiAyQzEzLjY1NjkgMiAxNSAzLjM0MzE1IDE1IDVWMTEuMzQ3N0MxNSAxMS42ODU3IDE1LjE3NDkgMTEuOTk1NyAxNS40Mzg2IDEyLjIwNzJDMTYuNjk1NCAxMy4yMTUyIDE3LjUgMTQuNzYzNiAxNy41IDE2LjVaTTEyIDQuMjVDMTIuNDE0MiA0LjI1IDEyLjc1IDQuNTg1NzkgMTIuNzUgNVYxMy4zODA0QzEyLjc1IDEzLjgxNzIgMTMuMDQ3MyAxNC4xODc2IDEzLjQwOCAxNC40MzM5QzE0LjA2NzMgMTQuODg0MSAxNC41IDE1LjY0MTUgMTQuNSAxNi41QzE0LjUgMTcuODgwNyAxMy4zODA3IDE5IDEyIDE5QzEwLjYxOTMgMTkgOS41IDE3Ljg4MDcgOS41IDE2LjVDOS41IDE1LjY0MTUgOS45MzI3MyAxNC44ODQxIDEwLjU5MiAxNC40MzM5QzEwLjk1MjcgMTQuMTg3NiAxMS4yNSAxMy44MTcyIDExLjI1IDEzLjM4MDRWNUMxMS4yNSA0LjU4NTc5IDExLjU4NTggNC4yNSAxMiA0LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class TemperatureBoldIcon extends StatelessWidget {
  /// Creates the `temperature` icon in the bold style.
  const TemperatureBoldIcon({
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
    name: 'temperature',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.5 16.5C17.5 19.5376 15.0376 22 12 22C8.96243 22 6.5 19.5376 6.5 16.5C6.5 14.7636 7.30465 13.2152 8.56141 12.2072C8.82505 11.9957 9 11.6857 9 11.3477V5C9 3.34315 10.3431 2 12 2C13.6569 2 15 3.34315 15 5V11.3477C15 11.6857 15.1749 11.9957 15.4386 12.2072C16.6954 13.2152 17.5 14.7636 17.5 16.5ZM12 4.25C12.4142 4.25 12.75 4.58579 12.75 5V13.3804C12.75 13.8172 13.0473 14.1876 13.408 14.4339C14.0673 14.8841 14.5 15.6415 14.5 16.5C14.5 17.8807 13.3807 19 12 19C10.6193 19 9.5 17.8807 9.5 16.5C9.5 15.6415 9.93273 14.8841 10.592 14.4339C10.9527 14.1876 11.25 13.8172 11.25 13.3804V5C11.25 4.58579 11.5858 4.25 12 4.25Z" fill="currentColor"/>''',
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
