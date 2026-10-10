// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMC4yNSAxMy45ODc1TDEyLjEwNzEgMTUuOTM3NUwxNi43NSAxMS4wNjI1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTIwLjk5ODMgMTBDMjAuOTg2MiA3LjgyNDk3IDIwLjg4OTcgNi42NDcwNiAyMC4xMjEzIDUuODc4NjhDMTkuMjQyNiA1IDE3LjgyODQgNSAxNSA1SDEyQzkuMTcxNTcgNSA3Ljc1NzM2IDUgNi44Nzg2OCA1Ljg3ODY4QzYgNi43NTczNiA2IDguMTcxNTcgNiAxMVYxNkM2IDE4LjgyODQgNiAyMC4yNDI2IDYuODc4NjggMjEuMTIxM0M3Ljc1NzM2IDIyIDkuMTcxNTcgMjIgMTIgMjJIMTVDMTcuODI4NCAyMiAxOS4yNDI2IDIyIDIwLjEyMTMgMjEuMTIxM0MyMSAyMC4yNDI2IDIxIDE4LjgyODQgMjEgMTZWMTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMyAxMFYxNkMzIDE3LjY1NjkgNC4zNDMxNSAxOSA2IDE5TTE4IDVDMTggMy4zNDMxNSAxNi42NTY5IDIgMTUgMkgxMUM3LjIyODc2IDIgNS4zNDMxNSAyIDQuMTcxNTcgMy4xNzE1N0MzLjUxODM5IDMuODI0NzUgMy4yMjkzNyA0LjY5OTg5IDMuMTAxNDkgNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class CopyCheckBrokenIcon extends StatelessWidget {
  /// Creates the `copy-check` icon in the broken style.
  const CopyCheckBrokenIcon({
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
    name: 'copy-check',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M10.25 13.9875L12.1071 15.9375L16.75 11.0625" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.9983 10C20.9862 7.82497 20.8897 6.64706 20.1213 5.87868C19.2426 5 17.8284 5 15 5H12C9.17157 5 7.75736 5 6.87868 5.87868C6 6.75736 6 8.17157 6 11V16C6 18.8284 6 20.2426 6.87868 21.1213C7.75736 22 9.17157 22 12 22H15C17.8284 22 19.2426 22 20.1213 21.1213C21 20.2426 21 18.8284 21 16V15" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 10V16C3 17.6569 4.34315 19 6 19M18 5C18 3.34315 16.6569 2 15 2H11C7.22876 2 5.34315 2 4.17157 3.17157C3.51839 3.82475 3.22937 4.69989 3.10149 6" stroke="currentColor" stroke-linecap="round"/>''',
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
