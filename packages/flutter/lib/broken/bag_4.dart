// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05IDYuMDMyVjVDOSAzLjM0MzE1IDEwLjM0MzEgMiAxMiAyQzEzLjY1NjkgMiAxNSAzLjM0MzE1IDE1IDVWNi4wMzIwMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMC4yMjM1IDEyLjUyNTdDMTkuNjM4MiA5LjQwNDUyIDE5LjM0NTYgNy44NDM5MyAxOC4yMzQ3IDYuOTIxOTZDMTcuMTIzOCA2IDE1LjUzNjEgNiAxMi4zNjA1IDZIMTEuNjM5M0M4LjQ2Mzc0IDYgNi44NzU5NiA2IDUuNzY1MDYgNi45MjE5NkM0LjY1NDE2IDcuODQzOTMgNC4zNjE1NSA5LjQwNDUyIDMuNzc2MzMgMTIuNTI1N0MyLjk1MzQgMTYuOTE0NiAyLjU0MTk0IDE5LjEwOTEgMy43NDE1NyAyMC41NTQ1QzQuOTQxMTkgMjIgNy4xNzM4OSAyMiAxMS42MzkzIDIySDEyLjM2MDVDMTYuODI1OSAyMiAxOS4wNTg2IDIyIDIwLjI1ODIgMjAuNTU0NUMyMC45NTQyIDE5LjcxNTkgMjEuMTA3OSAxOC42MjUyIDIwLjk1MzYgMTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSA5SDkuMDAwMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNSA5SDE1LjAwMDEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class Bag4BrokenIcon extends StatelessWidget {
  /// Creates the `bag-4` icon in the broken style.
  const Bag4BrokenIcon({
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
    name: 'bag-4',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M9 6.032V5C9 3.34315 10.3431 2 12 2C13.6569 2 15 3.34315 15 5V6.03201" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.2235 12.5257C19.6382 9.40452 19.3456 7.84393 18.2347 6.92196C17.1238 6 15.5361 6 12.3605 6H11.6393C8.46374 6 6.87596 6 5.76506 6.92196C4.65416 7.84393 4.36155 9.40452 3.77633 12.5257C2.9534 16.9146 2.54194 19.1091 3.74157 20.5545C4.94119 22 7.17389 22 11.6393 22H12.3605C16.8259 22 19.0586 22 20.2582 20.5545C20.9542 19.7159 21.1079 18.6252 20.9536 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 9H9.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15 9H15.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
