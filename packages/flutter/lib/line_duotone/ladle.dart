// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIgNS42ODQyMUMyIDMuNjQ5NDggMy42NDk0OCAyIDUuNjg0MjEgMkM3LjcxODk0IDIgOS4zNjg0MiAzLjY0OTQ4IDkuMzY4NDIgNS42ODQyMVYxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxNC41VjE1LjY4NDJDMjIgMTkuMTcyMyAxOS4xNzIzIDIyIDE1LjY4NDIgMjJDMTIuMTk2MSAyMiA5LjM2ODQxIDE5LjE3MjMgOS4zNjg0MSAxNS42ODQyVjE0LjYzMTZNMjIgMTQuNUMyMiAxNS44ODA3IDE5LjA1MzkgMTcgMTYgMTdDMTIuOTQ2MSAxNyA5LjM2ODQxIDE2LjAxMjMgOS4zNjg0MSAxNC42MzE2TTIyIDE0LjVDMjIgMTMuMTE5MyAxOS4wNTM5IDEyIDE2IDEyQzEyLjk0NjEgMTIgOS4zNjg0MSAxMy4yNTA5IDkuMzY4NDEgMTQuNjMxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class LadleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `ladle` icon in the lineDuotone style.
  const LadleLineDuotoneIcon({
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
    name: 'ladle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 14.5V15.6842C22 19.1723 19.1723 22 15.6842 22C12.1961 22 9.36841 19.1723 9.36841 15.6842V14.6316M22 14.5C22 15.8807 19.0539 17 16 17C12.9461 17 9.36841 16.0123 9.36841 14.6316M22 14.5C22 13.1193 19.0539 12 16 12C12.9461 12 9.36841 13.2509 9.36841 14.6316" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 5.68421C2 3.64948 3.64948 2 5.68421 2C7.71894 2 9.36842 3.64948 9.36842 5.68421V15" stroke="currentColor" stroke-linecap="round"/>''',
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
