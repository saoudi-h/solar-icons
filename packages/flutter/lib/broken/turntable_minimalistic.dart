// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNCAxMC41TDE2LjU1NDcgOC43OTY4N0MxNi44MzI5IDguNjExNCAxNyA4LjI5OTE3IDE3IDcuOTY0ODJWMi41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE3IDEyQzE3IDE0Ljc2MTQgMTQuNzYxNCAxNyAxMiAxN0M5LjIzODU4IDE3IDcgMTQuNzYxNCA3IDEyQzcgOS4yMzg1OCA5LjIzODU4IDcgMTIgN0MxMi41MjI2IDcgMTMuMDI2NSA3LjA4MDE4IDEzLjUgNy4yMjg5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDE0QzEwLjg5NTQgMTQgMTAgMTMuMTA0NiAxMCAxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxMkMyMiAxNi43MTQgMjIgMTkuMDcxMSAyMC41MzU1IDIwLjUzNTVDMTkuMDcxMSAyMiAxNi43MTQgMjIgMTIgMjJDNy4yODU5NSAyMiA0LjkyODkzIDIyIDMuNDY0NDcgMjAuNTM1NUMyIDE5LjA3MTEgMiAxNi43MTQgMiAxMkMyIDcuMjg1OTUgMiA0LjkyODkzIDMuNDY0NDcgMy40NjQ0N0M0LjkyODkzIDIgNy4yODU5NSAyIDEyIDJDMTYuNzE0IDIgMTkuMDcxMSAyIDIwLjUzNTUgMy40NjQ0N0MyMS41MDkzIDQuNDM4MjEgMjEuODM1NiA1LjgwNjU1IDIxLjk0NDkgOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class TurntableMinimalisticBrokenIcon extends StatelessWidget {
  /// Creates the `turntable-minimalistic` icon in the broken style.
  const TurntableMinimalisticBrokenIcon({
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
    name: 'turntable-minimalistic',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M14 10.5L16.5547 8.79687C16.8329 8.6114 17 8.29917 17 7.96482V2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 12C17 14.7614 14.7614 17 12 17C9.23858 17 7 14.7614 7 12C7 9.23858 9.23858 7 12 7C12.5226 7 13.0265 7.08018 13.5 7.2289" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 14C10.8954 14 10 13.1046 10 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C21.5093 4.43821 21.8356 5.80655 21.9449 8" stroke="currentColor" stroke-linecap="round"/>''',
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
