// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05LjAwMTk1IDdDOS4wMTQwNiA0LjgyNDk3IDkuMTEwNTEgMy42NDcwNiA5Ljg3ODg5IDIuODc4NjhDMTAuNzU3NiAyIDEyLjE3MTggMiAxNS4wMDAyIDJMMTYuMDAwMiAyQzE4LjgyODYgMiAyMC4yNDI5IDIgMjEuMTIxNSAyLjg3ODY4QzIyLjAwMDIgMy43NTczNiAyMi4wMDAyIDUuMTcxNTcgMjIuMDAwMiA4TDIyLjAwMDIgMTZDMjIuMDAwMiAxOC44Mjg0IDIyLjAwMDIgMjAuMjQyNiAyMS4xMjE1IDIxLjEyMTNDMjAuMjQyOSAyMiAxOC44Mjg2IDIyIDE2LjAwMDIgMjJIMTUuMDAwMkMxMi4xNzE4IDIyIDEwLjc1NzYgMjIgOS44Nzg4OSAyMS4xMjEzQzkuMTEwNTEgMjAuMzUyOSA5LjAxNDA2IDE5LjE3NSA5LjAwMTk1IDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDEyTDIgMTJNNS41IDE1TDIgMTJMNS41IDkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class Logout2LinearIcon extends StatelessWidget {
  /// Creates the `logout-2` icon in the linear style.
  const Logout2LinearIcon({
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
    name: 'logout-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9.00195 7C9.01406 4.82497 9.11051 3.64706 9.87889 2.87868C10.7576 2 12.1718 2 15.0002 2L16.0002 2C18.8286 2 20.2429 2 21.1215 2.87868C22.0002 3.75736 22.0002 5.17157 22.0002 8L22.0002 16C22.0002 18.8284 22.0002 20.2426 21.1215 21.1213C20.2429 22 18.8286 22 16.0002 22H15.0002C12.1718 22 10.7576 22 9.87889 21.1213C9.11051 20.3529 9.01406 19.175 9.00195 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 12L2 12M5.5 15L2 12L5.5 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
