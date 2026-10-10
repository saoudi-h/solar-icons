// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zLjY3OTgxIDEzTDMuNjc5ODEgMTEuMzMzM0MzLjY3OTgxIDYuNzMwOTYgNy40NDAyIDMgMTIuMDc4OSAzQzE1LjExNzggMyAxNy43Nzk5IDQuNjAxMzYgMTkuMjU0NSA3TTIgMTEuMzMzM0wzLjY3OTgxIDEzTDUuMzU5NjIgMTEuMzMzMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIwLjMxMzcgMTFWMTIuNjY2N0MyMC4zMTM3IDE3LjI2OSAxNi41Mzg5IDIxIDExLjg4MjUgMjFDOC44MzE4OSAyMSA2LjE1OTcgMTkuMzk4NiA0LjY3OTQ0IDE3TTIxLjk5OTkgMTIuNjY2N0wyMC4zMTM3IDExTDE4LjYyNzQgMTIuNjY2NyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class RefreshLineDuotoneIcon extends StatelessWidget {
  /// Creates the `refresh` icon in the lineDuotone style.
  const RefreshLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3.67981 13L3.67981 11.3333C3.67981 6.73096 7.4402 3 12.0789 3C15.1178 3 17.7799 4.60136 19.2545 7M2 11.3333L3.67981 13L5.35962 11.3333" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20.3137 11V12.6667C20.3137 17.269 16.5389 21 11.8825 21C8.83189 21 6.1597 19.3986 4.67944 17M21.9999 12.6667L20.3137 11L18.6274 12.6667" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
