// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAzSDExQzcuMjI4NzYgMyA1LjM0MzE1IDMgNC4xNzE1NyA0LjE3MTU3QzMgNS4zNDMxNSAzIDcuMjI4NzYgMyAxMVYxM0MzIDE2Ljc3MTIgMyAxOC42NTY5IDQuMTcxNTcgMTkuODI4NEM1LjM0MzE1IDIxIDcuMjI4NzYgMjEgMTEgMjFIMTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTEgM0gxNUMxNy44Mjg0IDMgMTkuMjQyNiAzIDIwLjEyMTMgMy44Nzg2OEMyMSA0Ljc1NzM2IDIxIDYuMTcxNTcgMjEgOVYxNUMyMSAxNy44Mjg0IDIxIDE5LjI0MjYgMjAuMTIxMyAyMC4xMjEzQzE5LjI0MjYgMjEgMTcuODI4NCAyMSAxNSAyMUgxMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtZGFzaGFycmF5PSIyLjUgMyIvPgo8cGF0aCBkPSJNMTIgMlYyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class MirrorLeftLinearIcon extends StatelessWidget {
  /// Creates the `mirror-left` icon in the linear style.
  const MirrorLeftLinearIcon({
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
    name: 'mirror-left',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 3H11C7.22876 3 5.34315 3 4.17157 4.17157C3 5.34315 3 7.22876 3 11V13C3 16.7712 3 18.6569 4.17157 19.8284C5.34315 21 7.22876 21 11 21H12" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 3H15C17.8284 3 19.2426 3 20.1213 3.87868C21 4.75736 21 6.17157 21 9V15C21 17.8284 21 19.2426 20.1213 20.1213C19.2426 21 17.8284 21 15 21H11" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2.5 3"/>
<path d="M12 2V22" stroke="currentColor" stroke-linecap="round"/>''',
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
