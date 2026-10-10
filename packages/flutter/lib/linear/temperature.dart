// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `temperature` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDIyQzE1LjAzNzYgMjIgMTcuNSAxOS41Mzc2IDE3LjUgMTYuNUMxNy41IDE0Ljc2MzYgMTYuNjk1NCAxMy4yMTUyIDE1LjQzODYgMTIuMjA3MkMxNS4xNzQ5IDExLjk5NTcgMTUgMTEuNjg1NyAxNSAxMS4zNDc3VjVDMTUgMy4zNDMxNSAxMy42NTY5IDIgMTIgMkMxMC4zNDMxIDIgOSAzLjM0MzE1IDkgNVYxMS4zNDc3QzkgMTEuNjg1NyA4LjgyNTA1IDExLjk5NTcgOC41NjE0MSAxMi4yMDcyQzcuMzA0NjUgMTMuMjE1MiA2LjUgMTQuNzYzNiA2LjUgMTYuNUM2LjUgMTkuNTM3NiA4Ljk2MjQzIDIyIDEyIDIyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNC41IDE2LjVDMTQuNSAxNy44ODA3IDEzLjM4MDcgMTkgMTIgMTlDMTAuNjE5MyAxOSA5LjUgMTcuODgwNyA5LjUgMTYuNUM5LjUgMTUuMTE5MyAxMC42MTkzIDE0IDEyIDE0QzEzLjM4MDcgMTQgMTQuNSAxNS4xMTkzIDE0LjUgMTYuNVoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMTRWNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class TemperatureLinearIcon extends StatelessWidget {
  /// Creates the `temperature` icon in the linear style.
  const TemperatureLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 22C15.0376 22 17.5 19.5376 17.5 16.5C17.5 14.7636 16.6954 13.2152 15.4386 12.2072C15.1749 11.9957 15 11.6857 15 11.3477V5C15 3.34315 13.6569 2 12 2C10.3431 2 9 3.34315 9 5V11.3477C9 11.6857 8.82505 11.9957 8.56141 12.2072C7.30465 13.2152 6.5 14.7636 6.5 16.5C6.5 19.5376 8.96243 22 12 22Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 16.5C14.5 17.8807 13.3807 19 12 19C10.6193 19 9.5 17.8807 9.5 16.5C9.5 15.1193 10.6193 14 12 14C13.3807 14 14.5 15.1193 14.5 16.5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 14V5" stroke="currentColor" stroke-linecap="round"/>''',
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
