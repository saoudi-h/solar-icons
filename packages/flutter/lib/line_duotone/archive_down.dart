// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIwLjUgN1YxM0MyMC41IDE2Ljc3MTIgMjAuNSAxOC42NTY5IDE5LjMyODQgMTkuODI4NEMxOC4xNTY5IDIxIDE2LjI3MTIgMjEgMTIuNSAyMUgxMS41QzcuNzI4NzYgMjEgNS44NDMxNSAyMSA0LjY3MTU3IDE5LjgyODRDMy41IDE4LjY1NjkgMy41IDE2Ljc3MTIgMy41IDEzVjciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMiA1QzIgNC4wNTcxOSAyIDMuNTg1NzkgMi4yOTI4OSAzLjI5Mjg5QzIuNTg1NzkgMyAzLjA1NzE5IDMgNCAzSDIwQzIwLjk0MjggMyAyMS40MTQyIDMgMjEuNzA3MSAzLjI5Mjg5QzIyIDMuNTg1NzkgMjIgNC4wNTcxOSAyMiA1QzIyIDUuOTQyODEgMjIgNi40MTQyMSAyMS43MDcxIDYuNzA3MTFDMjEuNDE0MiA3IDIwLjk0MjggNyAyMCA3SDRDMy4wNTcxOSA3IDIuNTg1NzkgNyAyLjI5Mjg5IDYuNzA3MTFDMiA2LjQxNDIxIDIgNS45NDI4MSAyIDVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDdMMTIgMTZNOSAxMi42NjY3TDEyIDE2TDE1IDEyLjY2NjciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class ArchiveDownLineDuotoneIcon extends StatelessWidget {
  /// Creates the `archive-down` icon in the lineDuotone style.
  const ArchiveDownLineDuotoneIcon({
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
    name: 'archive-down',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 5C2 4.05719 2 3.58579 2.29289 3.29289C2.58579 3 3.05719 3 4 3H20C20.9428 3 21.4142 3 21.7071 3.29289C22 3.58579 22 4.05719 22 5C22 5.94281 22 6.41421 21.7071 6.70711C21.4142 7 20.9428 7 20 7H4C3.05719 7 2.58579 7 2.29289 6.70711C2 6.41421 2 5.94281 2 5Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 7L12 16M9 12.6667L12 16L15 12.6667" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.5 7V13C20.5 16.7712 20.5 18.6569 19.3284 19.8284C18.1569 21 16.2712 21 12.5 21H11.5C7.72876 21 5.84315 21 4.67157 19.8284C3.5 18.6569 3.5 16.7712 3.5 13V7" stroke="currentColor" stroke-linecap="round"/>''',
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
