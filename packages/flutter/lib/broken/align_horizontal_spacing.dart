// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zIDJMMyAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMSAxMEwyMSAyMk0yMSAyTDIxIDYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOCAxNUw4IDE2QzggMTcuODg1NiA4IDE4LjgyODQgOC41ODU3OSAxOS40MTQyQzkuMTcxNTcgMjAgMTAuMTE0NCAyMCAxMiAyMEMxMy44ODU2IDIwIDE0LjgyODQgMjAgMTUuNDE0MiAxOS40MTQyQzE2IDE4LjgyODQgMTYgMTcuODg1NiAxNiAxNlY4QzE2IDYuMTE0MzkgMTYgNS4xNzE1NyAxNS40MTQyIDQuNTg1NzlDMTQuODI4NCA0IDEzLjg4NTYgNCAxMiA0QzEwLjExNDQgNCA5LjE3MTU3IDQgOC41ODU3OSA0LjU4NTc5QzggNS4xNzE1NyA4IDYuMTE0MzggOCA4TDggMTEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class AlignHorizontalSpacingBrokenIcon extends StatelessWidget {
  /// Creates the `align-horizontal-spacing` icon in the broken style.
  const AlignHorizontalSpacingBrokenIcon({
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
    name: 'align-horizontal-spacing',
    style: SolarIconStyle.broken,
    body: r'''<path d="M3 2L3 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 10L21 22M21 2L21 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 15L8 16C8 17.8856 8 18.8284 8.58579 19.4142C9.17157 20 10.1144 20 12 20C13.8856 20 14.8284 20 15.4142 19.4142C16 18.8284 16 17.8856 16 16V8C16 6.11439 16 5.17157 15.4142 4.58579C14.8284 4 13.8856 4 12 4C10.1144 4 9.17157 4 8.58579 4.58579C8 5.17157 8 6.11438 8 8L8 11" stroke="currentColor" stroke-linecap="round"/>''',
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
