// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMyAxN0MxMyAxNS4xMTQ0IDEzIDE0LjE3MTYgMTMuNTg1OCAxMy41ODU4QzE0LjE3MTYgMTMgMTUuMTE0NCAxMyAxNyAxM0gxOEMxOS44ODU2IDEzIDIwLjgyODQgMTMgMjEuNDE0MiAxMy41ODU4QzIyIDE0LjE3MTYgMjIgMTUuMTE0NCAyMiAxN0MyMiAxOC44ODU2IDIyIDE5LjgyODQgMjEuNDE0MiAyMC40MTQyQzIwLjgyODQgMjEgMTkuODg1NiAyMSAxOCAyMUgxN0MxNS4xMTQ0IDIxIDE0LjE3MTYgMjEgMTMuNTg1OCAyMC40MTQyQzEzIDE5LjgyODQgMTMgMTguODg1NiAxMyAxN1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAuNSA3LjVINy41VjEwLjVNNy41IDcuNUwxMS41IDExLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTEgMjFIMTBDNi4yMjg3NiAyMSA0LjM0MzE1IDIxIDMuMTcxNTcgMTkuODI4NEMyIDE4LjY1NjkgMiAxNi43NzEyIDIgMTNWMTFNMjIgMTFDMjIgNy4yMjg3NiAyMiA1LjM0MzE1IDIwLjgyODQgNC4xNzE1N0MxOS42NTY5IDMgMTcuNzcxMiAzIDE0IDNIMTBDNi4yMjg3NiAzIDQuMzQzMTUgMyAzLjE3MTU3IDQuMTcxNTdDMi41MTgzOSA0LjgyNDc1IDIuMjI5MzcgNS42OTk4OSAyLjEwMTQ5IDciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class QuitPipBrokenIcon extends StatelessWidget {
  /// Creates the `quit-pip` icon in the broken style.
  const QuitPipBrokenIcon({
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
    name: 'quit-pip',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13 17C13 15.1144 13 14.1716 13.5858 13.5858C14.1716 13 15.1144 13 17 13H18C19.8856 13 20.8284 13 21.4142 13.5858C22 14.1716 22 15.1144 22 17C22 18.8856 22 19.8284 21.4142 20.4142C20.8284 21 19.8856 21 18 21H17C15.1144 21 14.1716 21 13.5858 20.4142C13 19.8284 13 18.8856 13 17Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 7.5H7.5V10.5M7.5 7.5L11.5 11.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11M22 11C22 7.22876 22 5.34315 20.8284 4.17157C19.6569 3 17.7712 3 14 3H10C6.22876 3 4.34315 3 3.17157 4.17157C2.51839 4.82475 2.22937 5.69989 2.10149 7" stroke="currentColor" stroke-linecap="round"/>''',
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
