// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMy40NjQ0NyAzLjQ2NDQ3QzIgNC45Mjg5MyAyIDcuMjg1OTUgMiAxMkMyIDE2LjcxNCAyIDE5LjA3MTEgMy40NjQ0NyAyMC41MzU1QzQuOTI4OTMgMjIgNy4yODU5NSAyMiAxMiAyMkMxNi43MTQgMjIgMTkuMDcxMSAyMiAyMC41MzU1IDIwLjUzNTVDMjIgMTkuMDcxMSAyMiAxNi43MTQgMjIgMTJDMjIgNy4yODU5NSAyMiA0LjkyODkzIDIwLjUzNTUgMy40NjQ0N0MxOS4wNzExIDIgMTYuNzE0IDIgMTIgMkM3LjI4NTk1IDIgNC45Mjg5MyAyIDMuNDY0NDcgMy40NjQ0N1pNMTIgMTNDMTIuNTUyMyAxMyAxMyAxMi41NTIzIDEzIDEyQzEzIDExLjQ0NzcgMTIuNTUyMyAxMSAxMiAxMUMxMS40NDc3IDExIDExIDExLjQ0NzcgMTEgMTJDMTEgMTIuNTUyMyAxMS40NDc3IDEzIDEyIDEzWk05IDEyQzkgMTIuNTUyMyA4LjU1MjI4IDEzIDggMTNDNy40NDc3MiAxMyA3IDEyLjU1MjMgNyAxMkM3IDExLjQ0NzcgNy40NDc3MiAxMSA4IDExQzguNTUyMjggMTEgOSAxMS40NDc3IDkgMTJaTTE2IDEzQzE2LjU1MjMgMTMgMTcgMTIuNTUyMyAxNyAxMkMxNyAxMS40NDc3IDE2LjU1MjMgMTEgMTYgMTFDMTUuNDQ3NyAxMSAxNSAxMS40NDc3IDE1IDEyQzE1IDEyLjU1MjMgMTUuNDQ3NyAxMyAxNiAxM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MenuDotsSquareBoldIcon extends StatelessWidget {
  /// Creates the `menu-dots-square` icon in the bold style.
  const MenuDotsSquareBoldIcon({
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
    name: 'menu-dots-square',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 7.28595 22 4.92893 20.5355 3.46447C19.0711 2 16.714 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447ZM12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13ZM9 12C9 12.5523 8.55228 13 8 13C7.44772 13 7 12.5523 7 12C7 11.4477 7.44772 11 8 11C8.55228 11 9 11.4477 9 12ZM16 13C16.5523 13 17 12.5523 17 12C17 11.4477 16.5523 11 16 11C15.4477 11 15 11.4477 15 12C15 12.5523 15.4477 13 16 13Z" fill="currentColor"/>''',
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
