// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05IDE5QzkgMjAuNjU2OSA3LjY1Njg1IDIyIDYgMjJDNC4zNDMxNSAyMiAzIDIwLjY1NjkgMyAxOUMzIDE3LjM0MzEgNC4zNDMxNSAxNiA2IDE2QzcuNjU2ODUgMTYgOSAxNy4zNDMxIDkgMTlaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIxIDE3QzIxIDE4LjY1NjkgMTkuNjU2OSAyMCAxOCAyMEMxNi4zNDMxIDIwIDE1IDE4LjY1NjkgMTUgMTdDMTUgMTUuMzQzMSAxNi4zNDMxIDE0IDE4IDE0QzE5LjY1NjkgMTQgMjEgMTUuMzQzMSAyMSAxN1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSAxOVY4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIxIDE3VjYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTUuNzM1MSAzLjc1NDY2TDExLjczNTEgNS4wODc5OUMxMC40MTUxIDUuNTI4MDEgOS43NTUwMyA1Ljc0ODAxIDkuMzc3NTIgNi4yNzE3OUM5IDYuNzk1NTYgOSA3LjQ5MTI4IDkgOC44ODI3M1YxMS45OTk3TDIxIDcuOTk5NjlWNy41NDkzOUMyMSA1LjAxNjkzIDIxIDMuNzUwNyAyMC4xNjk0IDMuMTUyMDZDMTkuMzM4OCAyLjU1MzQxIDE4LjEzNzYgMi45NTM4MyAxNS43MzUxIDMuNzU0NjZaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class MusicNoteLinearIcon extends StatelessWidget {
  /// Creates the `music-note` icon in the linear style.
  const MusicNoteLinearIcon({
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
    name: 'music-note',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M9 19C9 20.6569 7.65685 22 6 22C4.34315 22 3 20.6569 3 19C3 17.3431 4.34315 16 6 16C7.65685 16 9 17.3431 9 19Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 17C21 18.6569 19.6569 20 18 20C16.3431 20 15 18.6569 15 17C15 15.3431 16.3431 14 18 14C19.6569 14 21 15.3431 21 17Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 19V8" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 17V6" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.7351 3.75466L11.7351 5.08799C10.4151 5.52801 9.75503 5.74801 9.37752 6.27179C9 6.79556 9 7.49128 9 8.88273V11.9997L21 7.99969V7.54939C21 5.01693 21 3.7507 20.1694 3.15206C19.3388 2.55341 18.1376 2.95383 15.7351 3.75466Z" stroke="currentColor" stroke-linecap="round"/>''',
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
