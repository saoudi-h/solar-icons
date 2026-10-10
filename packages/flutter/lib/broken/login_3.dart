// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04IDE2QzggMTguODI4NCA4IDIwLjI0MjYgOC44Nzg2OCAyMS4xMjEzQzkuNTE5OTggMjEuNzYyNiAxMC40NDY2IDIxLjkzNTkgMTIgMjEuOTgyN004IDhDOCA1LjE3MTU3IDggMy43NTczNiA4Ljg3ODY4IDIuODc4NjhDOS43NTczNiAyIDExLjE3MTYgMiAxNCAySDE1QzE3LjgyODQgMiAxOS4yNDI2IDIgMjAuMTIxMyAyLjg3ODY4QzIxIDMuNzU3MzYgMjEgNS4xNzE1NyAyMSA4VjEwVjE0VjE2QzIxIDE4LjgyODQgMjEgMjAuMjQyNiAyMC4xMjEzIDIxLjEyMTNDMTkuMzUyOSAyMS44ODk3IDE4LjE3NSAyMS45ODYyIDE2IDIxLjk5ODMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNiAxMkwxNSAxMk0xMi41IDkuNUwxNSAxMkwxMi41IDE0LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMyA5LjVWMTQuNUMzIDE2Ljg1NyAzIDE4LjAzNTUgMy43MzIyMyAxOC43Njc4QzQuNDY0NDcgMTkuNSA1LjY0Mjk4IDE5LjUgOCAxOS41SDguMTQxMTFNMy43MzIyMyA1LjIzMjIzQzQuNDY0NDcgNC41IDUuNjQyOTggNC41IDggNC41SDguMTQxMTEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class Login3BrokenIcon extends StatelessWidget {
  /// Creates the `login-3` icon in the broken style.
  const Login3BrokenIcon({
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
    name: 'login-3',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8 16C8 18.8284 8 20.2426 8.87868 21.1213C9.51998 21.7626 10.4466 21.9359 12 21.9827M8 8C8 5.17157 8 3.75736 8.87868 2.87868C9.75736 2 11.1716 2 14 2H15C17.8284 2 19.2426 2 20.1213 2.87868C21 3.75736 21 5.17157 21 8V10V14V16C21 18.8284 21 20.2426 20.1213 21.1213C19.3529 21.8897 18.175 21.9862 16 21.9983" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 12L15 12M12.5 9.5L15 12L12.5 14.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3 9.5V14.5C3 16.857 3 18.0355 3.73223 18.7678C4.46447 19.5 5.64298 19.5 8 19.5H8.14111M3.73223 5.23223C4.46447 4.5 5.64298 4.5 8 4.5H8.14111" stroke="currentColor" stroke-linecap="round"/>''',
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
