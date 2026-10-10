// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00IDhDNCA1LjE3MTU3IDQgMy43NTczNiA0Ljg3ODY4IDIuODc4NjhDNS43NTczNiAyIDcuMTcxNTcgMiAxMCAySDE0QzE2LjgyODQgMiAxOC4yNDI2IDIgMTkuMTIxMyAyLjg3ODY4QzIwIDMuNzU3MzYgMjAgNS4xNzE1NyAyMCA4VjE2QzIwIDE4LjgyODQgMjAgMjAuMjQyNiAxOS4xMjEzIDIxLjEyMTNDMTguMjQyNiAyMiAxNi44Mjg0IDIyIDE0IDIySDEwQzcuMTcxNTcgMjIgNS43NTczNiAyMiA0Ljg3ODY4IDIxLjEyMTNDNCAyMC4yNDI2IDQgMTguODI4NCA0IDE2VjhaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcgMTZWMi4wNzYxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMCAxNkg3Ljg5ODFDNi45NjgxMiAxNiA2LjUwMzE0IDE2IDYuMTIxNjQgMTYuMTAyMkM1LjA4NjM2IDE2LjM3OTYgNC4yOTkzNyAxNy4xMDkgNC4wMjE5NyAxOC4xNDQzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class BookMinimalisticLinearIcon extends StatelessWidget {
  /// Creates the `book-minimalistic` icon in the linear style.
  const BookMinimalisticLinearIcon({
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
    name: 'book-minimalistic',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 8C4 5.17157 4 3.75736 4.87868 2.87868C5.75736 2 7.17157 2 10 2H14C16.8284 2 18.2426 2 19.1213 2.87868C20 3.75736 20 5.17157 20 8V16C20 18.8284 20 20.2426 19.1213 21.1213C18.2426 22 16.8284 22 14 22H10C7.17157 22 5.75736 22 4.87868 21.1213C4 20.2426 4 18.8284 4 16V8Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 16V2.07612" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 16H7.8981C6.96812 16 6.50314 16 6.12164 16.1022C5.08636 16.3796 4.29937 17.109 4.02197 18.1443" stroke="currentColor" stroke-linecap="round"/>''',
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
