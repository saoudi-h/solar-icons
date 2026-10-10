// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04LjAwMTk1IDdDOC4wMTQwNiA0LjgyNDk3IDguMTEwNTEgMy42NDcwNiA4Ljg3ODg5IDIuODc4NjhDOS43NTc1NyAyIDExLjE3MTggMiAxNC4wMDAyIDJIMTUuMDAwMkMxNy44Mjg2IDIgMTkuMjQyOSAyIDIwLjEyMTUgMi44Nzg2OEMyMS4wMDAyIDMuNzU3MzYgMjEuMDAwMiA1LjE3MTU3IDIxLjAwMDIgOFYxNkMyMS4wMDAyIDE4LjgyODQgMjEuMDAwMiAyMC4yNDI2IDIwLjEyMTUgMjEuMTIxM0MxOS4yNDI5IDIyIDE3LjgyODYgMjIgMTUuMDAwMiAyMkgxNC4wMDAyQzExLjE3MTggMjIgOS43NTc1NyAyMiA4Ljg3ODg5IDIxLjEyMTNDOC4xMTA1MSAyMC4zNTI5IDguMDE0MDYgMTkuMTc1IDguMDAxOTUgMTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUgMTJMNiAxMk04IDEwTDYgMTJMOCAxNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik04LjE0MTE0IDQuNUg4QzUuNjQyOTggNC41IDQuNDY0NDcgNC41IDMuNzMyMjMgNS4yMzIyM0MzIDUuOTY0NDcgMyA3LjE0Mjk4IDMgOS41VjE0LjVDMyAxNi44NTcgMyAxOC4wMzU1IDMuNzMyMjMgMTguNzY3OEM0LjQ2NDQ3IDE5LjUgNS42NDI5OCAxOS41IDggMTkuNUg4LjE0MTE0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Logout3LinearIcon extends StatelessWidget {
  /// Creates the `logout-3` icon in the linear style.
  const Logout3LinearIcon({
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
    name: 'logout-3',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8.00195 7C8.01406 4.82497 8.11051 3.64706 8.87889 2.87868C9.75757 2 11.1718 2 14.0002 2H15.0002C17.8286 2 19.2429 2 20.1215 2.87868C21.0002 3.75736 21.0002 5.17157 21.0002 8V16C21.0002 18.8284 21.0002 20.2426 20.1215 21.1213C19.2429 22 17.8286 22 15.0002 22H14.0002C11.1718 22 9.75757 22 8.87889 21.1213C8.11051 20.3529 8.01406 19.175 8.00195 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 12L6 12M8 10L6 12L8 14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8.14114 4.5H8C5.64298 4.5 4.46447 4.5 3.73223 5.23223C3 5.96447 3 7.14298 3 9.5V14.5C3 16.857 3 18.0355 3.73223 18.7678C4.46447 19.5 5.64298 19.5 8 19.5H8.14114" stroke="currentColor" stroke-linecap="round"/>''',
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
