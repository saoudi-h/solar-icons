// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMiAxOUgxM0M5LjIyODc2IDE5IDcuMzQzMTUgMTkgNi4xNzE1NyAxNy44Mjg0QzUgMTYuNjU2OSA1IDE0Ljc3MTIgNSAxMVYyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTggNUgxMUMxNC43NzEyIDUgMTYuNjU2OSA1IDE3LjgyODQgNi4xNzE1N0MxOSA3LjM0MzE1IDE5IDkuMjI4NzYgMTkgMTNWMTZNMiA1SDVNMTkgMTlWMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOC41IDExLjVDOC41IDEwLjA4NTggOC41IDkuMzc4NjggOC45MzkzNCA4LjkzOTM0QzkuMzc4NjggOC41IDEwLjA4NTggOC41IDExLjUgOC41SDEyLjVDMTMuOTE0MiA4LjUgMTQuNjIxMyA4LjUgMTUuMDYwNyA4LjkzOTM0QzE1LjUgOS4zNzg2OCAxNS41IDEwLjA4NTggMTUuNSAxMS41VjEyLjVDMTUuNSAxMy45MTQyIDE1LjUgMTQuNjIxMyAxNS4wNjA3IDE1LjA2MDdDMTQuNjIxMyAxNS41IDEzLjkxNDIgMTUuNSAxMi41IDE1LjVIMTEuNUMxMC4wODU4IDE1LjUgOS4zNzg2OCAxNS41IDguOTM5MzQgMTUuMDYwN0M4LjUgMTQuNjIxMyA4LjUgMTMuOTE0MiA4LjUgMTIuNVYxMS41WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class CropLinearIcon extends StatelessWidget {
  /// Creates the `crop` icon in the linear style.
  const CropLinearIcon({
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
    name: 'crop',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 19H13C9.22876 19 7.34315 19 6.17157 17.8284C5 16.6569 5 14.7712 5 11V2" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 5H11C14.7712 5 16.6569 5 17.8284 6.17157C19 7.34315 19 9.22876 19 13V16M2 5H5M19 19V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 11.5C8.5 10.0858 8.5 9.37868 8.93934 8.93934C9.37868 8.5 10.0858 8.5 11.5 8.5H12.5C13.9142 8.5 14.6213 8.5 15.0607 8.93934C15.5 9.37868 15.5 10.0858 15.5 11.5V12.5C15.5 13.9142 15.5 14.6213 15.0607 15.0607C14.6213 15.5 13.9142 15.5 12.5 15.5H11.5C10.0858 15.5 9.37868 15.5 8.93934 15.0607C8.5 14.6213 8.5 13.9142 8.5 12.5V11.5Z" stroke="currentColor" stroke-linecap="round"/>''',
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
