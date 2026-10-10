// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik02IDguMTA3NDdDNiA0LjczNDQxIDguNjg2MjkgMiAxMiAyQzE1LjMxMzcgMiAxOCA0LjczNDQxIDE4IDguMTA3NDdDMTggMTEuNDU0MSAxNi4wODUgMTUuMzU5MyAxMy4wOTcyIDE2Ljc1NThDMTIuNDAwNyAxNy4wODE0IDExLjU5OTMgMTcuMDgxNCAxMC45MDI4IDE2Ljc1NThDNy45MTQ5OSAxNS4zNTkzIDYgMTEuNDU0MSA2IDguMTA3NDdaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE0IDhDMTQgOS4xMDQ1NyAxMy4xMDQ2IDEwIDEyIDEwQzEwLjg5NTQgMTAgMTAgOS4xMDQ1NyAxMCA4QzEwIDYuODk1NDMgMTAuODk1NCA2IDEyIDZDMTMuMTA0NiA2IDE0IDYuODk1NDMgMTQgOFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAuNSAyMC42NDM1VjIyTDEyIDIwLjY4NzVMMTAuNSAxOS4zNzVWMjAuNjQzNVpNMTAuNSAyMC42NDM1QzUuNjg4NzQgMjAuMzU4NSAyIDE4LjcyMzkgMiAxNi43NUMyIDE2LjEyMTQgMi4zNzQxMiAxNS41MjcyIDMuMDM5NDcgMTVNMjAuOTYwNSAxNUMyMS42MjU5IDE1LjUyNzIgMjIgMTYuMTIxNCAyMiAxNi43NUMyMiAxOC41ODQ3IDE4LjgxMzEgMjAuMTI2MyAxNC41IDIwLjU2MzUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class MapPointRotateLinearIcon extends StatelessWidget {
  /// Creates the `map-point-rotate` icon in the linear style.
  const MapPointRotateLinearIcon({
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
    name: 'map-point-rotate',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M6 8.10747C6 4.73441 8.68629 2 12 2C15.3137 2 18 4.73441 18 8.10747C18 11.4541 16.085 15.3593 13.0972 16.7558C12.4007 17.0814 11.5993 17.0814 10.9028 16.7558C7.91499 15.3593 6 11.4541 6 8.10747Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 8C14 9.10457 13.1046 10 12 10C10.8954 10 10 9.10457 10 8C10 6.89543 10.8954 6 12 6C13.1046 6 14 6.89543 14 8Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 20.6435V22L12 20.6875L10.5 19.375V20.6435ZM10.5 20.6435C5.68874 20.3585 2 18.7239 2 16.75C2 16.1214 2.37412 15.5272 3.03947 15M20.9605 15C21.6259 15.5272 22 16.1214 22 16.75C22 18.5847 18.8131 20.1263 14.5 20.5635" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
