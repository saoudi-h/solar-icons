// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNCAyMEMxNy43NzEyIDIwIDE5LjY1NjkgMjAgMjAuODI4NCAxOC44Mjg0QzIyIDE3LjY1NjkgMjIgMTUuNzcxMiAyMiAxMkMyMiAxMS42NTA4IDIyIDExLjMxNzggMjEuOTk5MSAxMU0yIDguNUMyIDguMDM1NjYgMiA3LjgwMzQ5IDIuMDE5MjYgNy42MDc5M0MyLjIwNjMxIDUuNzA4ODIgMy43MDg4MiA0LjIwNjMxIDUuNjA3OTMgNC4wMTkyNkM1LjgwMzQ5IDQgNi4wMzU2NiA0IDYuNSA0SDE0QzE3Ljc3MTIgNCAxOS42NTY5IDQgMjAuODI4NCA1LjE3MTU3QzIxLjI5OCA1LjY0MTE4IDIxLjU3OTQgNi4yMjU1IDIxLjc0OCA3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTExIDIwQzExIDE1LjAyOTQgNi45NzA1NiAxMSAyIDExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTggMjBDOCAxNi42ODYzIDUuMzEzNzEgMTQgMiAxNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik01IDIwQzUgMTguMzQzMSAzLjY1Njg1IDE3IDIgMTciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class ScreencastBrokenIcon extends StatelessWidget {
  /// Creates the `screencast` icon in the broken style.
  const ScreencastBrokenIcon({
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
    name: 'screencast',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M14 20C17.7712 20 19.6569 20 20.8284 18.8284C22 17.6569 22 15.7712 22 12C22 11.6508 22 11.3178 21.9991 11M2 8.5C2 8.03566 2 7.80349 2.01926 7.60793C2.20631 5.70882 3.70882 4.20631 5.60793 4.01926C5.80349 4 6.03566 4 6.5 4H14C17.7712 4 19.6569 4 20.8284 5.17157C21.298 5.64118 21.5794 6.2255 21.748 7" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11 20C11 15.0294 6.97056 11 2 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 20C8 16.6863 5.31371 14 2 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 20C5 18.3431 3.65685 17 2 17" stroke="currentColor" stroke-linecap="round"/>''',
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
