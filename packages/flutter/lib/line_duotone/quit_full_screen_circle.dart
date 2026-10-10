// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `quit-full-screen-circle` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkuOTk3NTYgNi4wMDA2NUM5Ljk4MzA5IDcuNzA3MjIgOS44ODgzNCA4LjY0ODAxIDkuMjY3OTMgOS4yNjg0MkM4LjY0NzUyIDkuODg4ODMgNy43MDY3MyA5Ljk4MzU4IDYuMDAwMTcgOS45OTgwNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05Ljk5NzU2IDE3Ljk5NzRDOS45ODMwOSAxNi4yOTA4IDkuODg4MzQgMTUuMzUgOS4yNjc5MyAxNC43Mjk2QzguNjQ3NTIgMTQuMTA5MiA3LjcwNjczIDE0LjAxNDUgNi4wMDAxNyAxNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNCA2LjAwMDY1QzE0LjAxNDUgNy43MDcyMiAxNC4xMDkyIDguNjQ4MDEgMTQuNzI5NiA5LjI2ODQyQzE1LjM1IDkuODg4ODMgMTYuMjkwOCA5Ljk4MzU4IDE3Ljk5NzQgOS45OTgwNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNCAxNy45OTc0QzE0LjAxNDUgMTYuMjkwOCAxNC4xMDkyIDE1LjM1IDE0LjcyOTYgMTQuNzI5NkMxNS4zNSAxNC4xMDkyIDE2LjI5MDggMTQuMDE0NSAxNy45OTc0IDE0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSIxMiIgY3k9IjEyIiByPSIxMCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class QuitFullScreenCircleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `quit-full-screen-circle` icon in the lineDuotone style.
  const QuitFullScreenCircleLineDuotoneIcon({
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
    name: 'quit-full-screen-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9.99756 6.00065C9.98309 7.70722 9.88834 8.64801 9.26793 9.26842C8.64752 9.88883 7.70673 9.98358 6.00017 9.99805" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.99756 17.9974C9.98309 16.2908 9.88834 15.35 9.26793 14.7296C8.64752 14.1092 7.70673 14.0145 6.00017 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 6.00065C14.0145 7.70722 14.1092 8.64801 14.7296 9.26842C15.35 9.88883 16.2908 9.98358 17.9974 9.99805" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 17.9974C14.0145 16.2908 14.1092 15.35 14.7296 14.7296C15.35 14.1092 16.2908 14.0145 17.9974 14" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
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
