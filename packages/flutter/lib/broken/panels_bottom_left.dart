// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05IDIuMDIwMDhMOSAxNC40OTk5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIuMDEwOTkgMTQuNUwxMi45OTUzIDE0LjVNMTYuOTk1MyAxNC41TDIxLjk4OTEgMTQuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yIDEyQzIgMTYuNzE0IDIgMTkuMDcxMSAzLjQ2NDQ3IDIwLjUzNTVDNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyIDIyQzE2LjcxNCAyMiAxOS4wNzExIDIyIDIwLjUzNTUgMjAuNTM1NUMyMiAxOS4wNzExIDIyIDE2LjcxNCAyMiAxMkMyMiA3LjI4NTk1IDIyIDQuOTI4OTMgMjAuNTM1NSAzLjQ2NDQ3QzE5LjA3MTEgMiAxNi43MTQgMiAxMiAyQzcuMjg1OTUgMiA0LjkyODkzIDIgMy40NjQ0NyAzLjQ2NDQ3QzIuNDkwNzMgNC40MzgyMSAyLjE2NDQ0IDUuODA2NTUgMi4wNTUxIDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PanelsBottomLeftBrokenIcon extends StatelessWidget {
  /// Creates the `panels-bottom-left` icon in the broken style.
  const PanelsBottomLeftBrokenIcon({
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
    name: 'panels-bottom-left',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9 2.02008L9 14.4999" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.01099 14.5L12.9953 14.5M16.9953 14.5L21.9891 14.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2.49073 4.43821 2.16444 5.80655 2.0551 8" stroke="currentColor" stroke-linecap="round"/>''',
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
