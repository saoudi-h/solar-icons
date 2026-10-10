// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik02IDhDNiA0LjY4NjI5IDguNjg2MjkgMiAxMiAyQzE1LjMxMzcgMiAxOCA0LjY4NjI5IDE4IDhWMTNDMTggMTYuMzEzNyAxNS4zMTM3IDE5IDEyIDE5QzguNjg2MjkgMTkgNiAxNi4zMTM3IDYgMTNWOFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAgNi41QzEwIDYuNSAxMC40NzI3IDYgMTIgNkMxMy41MjczIDYgMTQgNi41IDE0IDYuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMCA5LjVDMTAgOS41IDEwLjQ3MjcgOSAxMiA5QzEzLjUyNzMgOSAxNCA5LjUgMTQgOS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIxIDExVjEzQzIxIDE3Ljk3MDYgMTYuOTcwNiAyMiAxMiAyMkM3LjAyOTQ0IDIyIDMgMTcuOTcwNiAzIDEzVjExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class MicrophoneLargeLinearIcon extends StatelessWidget {
  /// Creates the `microphone-large` icon in the linear style.
  const MicrophoneLargeLinearIcon({
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
    name: 'microphone-large',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M6 8C6 4.68629 8.68629 2 12 2C15.3137 2 18 4.68629 18 8V13C18 16.3137 15.3137 19 12 19C8.68629 19 6 16.3137 6 13V8Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 6.5C10 6.5 10.4727 6 12 6C13.5273 6 14 6.5 14 6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 9.5C10 9.5 10.4727 9 12 9C13.5273 9 14 9.5 14 9.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 11V13C21 17.9706 16.9706 22 12 22C7.02944 22 3 17.9706 3 13V11" stroke="currentColor" stroke-linecap="round"/>''',
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
