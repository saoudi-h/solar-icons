// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNyA5LjAwMTk1QzE5LjE3NSA5LjAxNDA2IDIwLjM1MjkgOS4xMTA1MSAyMS4xMjEzIDkuODc4OUMyMiAxMC43NTc2IDIyIDEyLjE3MTggMjIgMTUuMDAwMlYxNi4wMDAyQzIyIDE4LjgyODYgMjIgMjAuMjQyOSAyMS4xMjEzIDIxLjEyMTVDMjAuMjQyNiAyMi4wMDAyIDE4LjgyODQgMjIuMDAwMiAxNiAyMi4wMDAySDhDNS4xNzE1NyAyMi4wMDAyIDMuNzU3MzYgMjIuMDAwMiAyLjg3ODY4IDIxLjEyMTVDMiAyMC4yNDI5IDIgMTguODI4NiAyIDE2LjAwMDJMMiAxNS4wMDAyQzIgMTIuMTcxOCAyIDEwLjc1NzYgMi44Nzg2OCA5Ljg3ODg5QzMuNjQ3MDYgOS4xMTA1MSA0LjgyNDk3IDkuMDE0MDYgNyA5LjAwMTk1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDE1TDEyIDJNOSA1LjVMMTIgMkwxNSA1LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class UploadLinearIcon extends StatelessWidget {
  /// Creates the `upload` icon in the linear style.
  const UploadLinearIcon({
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
    name: 'upload',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M17 9.00195C19.175 9.01406 20.3529 9.11051 21.1213 9.8789C22 10.7576 22 12.1718 22 15.0002V16.0002C22 18.8286 22 20.2429 21.1213 21.1215C20.2426 22.0002 18.8284 22.0002 16 22.0002H8C5.17157 22.0002 3.75736 22.0002 2.87868 21.1215C2 20.2429 2 18.8286 2 16.0002L2 15.0002C2 12.1718 2 10.7576 2.87868 9.87889C3.64706 9.11051 4.82497 9.01406 7 9.00195" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 15L12 2M9 5.5L12 2L15 5.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
