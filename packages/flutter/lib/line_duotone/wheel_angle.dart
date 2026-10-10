// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNi41IDIyQzE4Ljk4NTMgMjIgMjEgMTcuNTIyOCAyMSAxMkMyMSA2LjQ3NzE1IDE4Ljk4NTMgMiAxNi41IDIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMTJDMTIgMTcuNTIyOCA5Ljk4NTI4IDIyIDcuNSAyMkM1LjAxNDcyIDIyIDMgMTcuNTIyOCAzIDEyQzMgNi40NzcxNSA1LjAxNDcyIDIgNy41IDJDOS45ODUyOCAyIDEyIDYuNDc3MTUgMTIgMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcuNSAyTDE2LjUgMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik03LjUgMjJMMTYuNSAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTkgMTJDOSAxNS4zMTM3IDguMzI4NDMgMTggNy41IDE4QzYuNjcxNTcgMTggNiAxNS4zMTM3IDYgMTJDNiA4LjY4NjI5IDYuNjcxNTcgNiA3LjUgNkM4LjMyODQzIDYgOSA4LjY4NjI5IDkgMTJaTTkgMTJIOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class WheelAngleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `wheel-angle` icon in the lineDuotone style.
  const WheelAngleLineDuotoneIcon({
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
    name: 'wheel-angle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M16.5 22C18.9853 22 21 17.5228 21 12C21 6.47715 18.9853 2 16.5 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 12C12 17.5228 9.98528 22 7.5 22C5.01472 22 3 17.5228 3 12C3 6.47715 5.01472 2 7.5 2C9.98528 2 12 6.47715 12 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.5 2L16.5 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.5 22L16.5 22" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9 12C9 15.3137 8.32843 18 7.5 18C6.67157 18 6 15.3137 6 12C6 8.68629 6.67157 6 7.5 6C8.32843 6 9 8.68629 9 12ZM9 12H8" stroke="currentColor" stroke-linecap="round"/>''',
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
