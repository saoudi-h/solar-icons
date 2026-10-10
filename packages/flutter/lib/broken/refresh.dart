// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zLjY3OTgxIDEzTDMuNjc5ODEgMTEuMzMzM0MzLjY3OTgxIDYuNzMwOTYgNy40NDAyIDMgMTIuMDc4OSAzQzEyLjIyMDEgMyAxMi4zNjA1IDMuMDAzNDYgMTIuNSAzLjAxMDI5TTIgMTEuMzMzM0wzLjY3OTgxIDEzTDUuMzU5NjIgMTEuMzMzM00xOS4yNTQ1IDdDMTguNTY3IDUuODgxNzYgMTcuNjIxNSA0LjkzNjggMTYuNSA0LjI0NjYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjAuMzEzNyAxMVYxMi42NjY3QzIwLjMxMzcgMTcuMjY5IDE2LjUzODkgMjEgMTEuODgyNSAyMUMxMS43NTQzIDIxIDExLjYyNjggMjAuOTk3MiAxMS41IDIwLjk5MTZNMjEuOTk5OSAxMi42NjY3TDIwLjMxMzcgMTFMMTguNjI3NCAxMi42NjY3TTQuNjc5NDQgMTdDNS4zODA4NiAxOC4xMzY2IDYuMzQ5ODkgMTkuMDk0MiA3LjUgMTkuNzg3MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class RefreshBrokenIcon extends StatelessWidget {
  /// Creates the `refresh` icon in the broken style.
  const RefreshBrokenIcon({
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
    name: 'refresh',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3.67981 13L3.67981 11.3333C3.67981 6.73096 7.4402 3 12.0789 3C12.2201 3 12.3605 3.00346 12.5 3.01029M2 11.3333L3.67981 13L5.35962 11.3333M19.2545 7C18.567 5.88176 17.6215 4.9368 16.5 4.2466" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.3137 11V12.6667C20.3137 17.269 16.5389 21 11.8825 21C11.7543 21 11.6268 20.9972 11.5 20.9916M21.9999 12.6667L20.3137 11L18.6274 12.6667M4.67944 17C5.38086 18.1366 6.34989 19.0942 7.5 19.7872" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
