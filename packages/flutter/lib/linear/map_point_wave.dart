// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik01IDguNTE0NjRDNSA0LjkxNjcgOC4xMzQwMSAyIDEyIDJDMTUuODY2IDIgMTkgNC45MTY3IDE5IDguNTE0NjRDMTkgMTIuMDg0NCAxNi43NjU4IDE2LjI0OTkgMTMuMjgwMSAxNy43Mzk2QzEyLjQ2NzUgMTguMDg2OCAxMS41MzI1IDE4LjA4NjggMTAuNzE5OSAxNy43Mzk2QzcuMjM0MTYgMTYuMjQ5OSA1IDEyLjA4NDQgNSA4LjUxNDY0WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNCA5QzE0IDEwLjEwNDYgMTMuMTA0NiAxMSAxMiAxMUMxMC44OTU0IDExIDEwIDEwLjEwNDYgMTAgOUMxMCA3Ljg5NTQzIDEwLjg5NTQgNyAxMiA3QzEzLjEwNDYgNyAxNCA3Ljg5NTQzIDE0IDlaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIwLjk2MDUgMTUuNUMyMS42MjU5IDE2LjEwMjUgMjIgMTYuNzgxNiAyMiAxNy41QzIyIDE5Ljk4NTMgMTcuNTIyOCAyMiAxMiAyMkM2LjQ3NzE1IDIyIDIgMTkuOTg1MyAyIDE3LjVDMiAxNi43ODE2IDIuMzc0MTIgMTYuMTAyNSAzLjAzOTQ3IDE1LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class MapPointWaveLinearIcon extends StatelessWidget {
  /// Creates the `map-point-wave` icon in the linear style.
  const MapPointWaveLinearIcon({
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
    name: 'map-point-wave',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M5 8.51464C5 4.9167 8.13401 2 12 2C15.866 2 19 4.9167 19 8.51464C19 12.0844 16.7658 16.2499 13.2801 17.7396C12.4675 18.0868 11.5325 18.0868 10.7199 17.7396C7.23416 16.2499 5 12.0844 5 8.51464Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 9C14 10.1046 13.1046 11 12 11C10.8954 11 10 10.1046 10 9C10 7.89543 10.8954 7 12 7C13.1046 7 14 7.89543 14 9Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.9605 15.5C21.6259 16.1025 22 16.7816 22 17.5C22 19.9853 17.5228 22 12 22C6.47715 22 2 19.9853 2 17.5C2 16.7816 2.37412 16.1025 3.03947 15.5" stroke="currentColor" stroke-linecap="round"/>''',
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
