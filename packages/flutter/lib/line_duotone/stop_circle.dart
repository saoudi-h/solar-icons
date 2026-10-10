// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iMTIiIGN5PSIxMiIgcj0iMTAiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOCAxMkM4IDEwLjExNDQgOCA5LjE3MTU3IDguNTg1NzkgOC41ODU3OUM5LjE3MTU3IDggMTAuMTE0NCA4IDEyIDhDMTMuODg1NiA4IDE0LjgyODQgOCAxNS40MTQyIDguNTg1NzlDMTYgOS4xNzE1NyAxNiAxMC4xMTQ0IDE2IDEyQzE2IDEzLjg4NTYgMTYgMTQuODI4NCAxNS40MTQyIDE1LjQxNDJDMTQuODI4NCAxNiAxMy44ODU2IDE2IDEyIDE2QzEwLjExNDQgMTYgOS4xNzE1NyAxNiA4LjU4NTc5IDE1LjQxNDJDOCAxNC44Mjg0IDggMTMuODg1NiA4IDEyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class StopCircleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `stop-circle` icon in the lineDuotone style.
  const StopCircleLineDuotoneIcon({
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
    name: 'stop-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M8 12C8 10.1144 8 9.17157 8.58579 8.58579C9.17157 8 10.1144 8 12 8C13.8856 8 14.8284 8 15.4142 8.58579C16 9.17157 16 10.1144 16 12C16 13.8856 16 14.8284 15.4142 15.4142C14.8284 16 13.8856 16 12 16C10.1144 16 9.17157 16 8.58579 15.4142C8 14.8284 8 13.8856 8 12Z" stroke="currentColor" stroke-linecap="round"/>''',
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
