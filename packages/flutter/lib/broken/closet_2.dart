// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOSAyMlYyMC41TTUgMjJWMjAuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAyMFYxOE0xMiAyVjE0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDlWMTMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSA5VjEzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDEwQzIyIDYuMjI4NzYgMjIgNC4zNDMxNSAyMC44Mjg0IDMuMTcxNTdDMTkuNjU2OSAyIDE3Ljc3MTIgMiAxNCAySDEwQzYuMjI4NzYgMiA0LjM0MzE1IDIgMy4xNzE1NyAzLjE3MTU3QzIgNC4zNDMxNSAyIDYuMjI4NzYgMiAxMFYxMkMyIDE1Ljc3MTIgMiAxNy42NTY5IDMuMTcxNTcgMTguODI4NEM0LjM0MzE1IDIwIDYuMjI4NzYgMjAgMTAgMjBIMTRDMTcuNzcxMiAyMCAxOS42NTY5IDIwIDIwLjgyODQgMTguODI4NEMyMS43NzE1IDE3Ljg4NTMgMjEuOTU1NCAxNi40Nzk2IDIxLjk5MTMgMTQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class Closet2BrokenIcon extends StatelessWidget {
  /// Creates the `closet-2` icon in the broken style.
  const Closet2BrokenIcon({
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
    name: 'closet-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M19 22V20.5M5 22V20.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 20V18M12 2V14" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 9V13" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 9V13" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 10C22 6.22876 22 4.34315 20.8284 3.17157C19.6569 2 17.7712 2 14 2H10C6.22876 2 4.34315 2 3.17157 3.17157C2 4.34315 2 6.22876 2 10V12C2 15.7712 2 17.6569 3.17157 18.8284C4.34315 20 6.22876 20 10 20H14C17.7712 20 19.6569 20 20.8284 18.8284C21.7715 17.8853 21.9554 16.4796 21.9913 14" stroke="currentColor" stroke-linecap="round"/>''',
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
