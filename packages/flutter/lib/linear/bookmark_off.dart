// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMiAyTDIgMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMy4yOTkxNiAyMC43MDA4QzMgMTkuODMxNCAzIDE4LjM4NjcgMyAxNi4wOTA5VjExLjA5NzVDMyA2LjgwODkxIDMgNC42NjQ2IDQuMzE4MDIgMy4zMzIzQzUuNjM2MDQgMiA3Ljc1NzM2IDIgMTIgMkMxNi4yNDI2IDIgMTguMzY0IDIgMTkuNjgyIDMuMzMyM0MxOS44NDg1IDMuNTAwNjQgMTkuOTk0IDMuNjgxOTQgMjAuMTIxMSAzLjg3ODg5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTUuNDk5MDIgMjEuOTU2NUM2LjM5MjA1IDIxLjc0MzYgNy41MTM5MSAyMC43NTEzIDkuNDQyMTQgMTkuMDQ1OEMxMC40NjEyIDE4LjE0NDUgMTAuOTcwNyAxNy42OTM4IDExLjU2MDMgMTcuNTc1QzExLjg1MDYgMTcuNTE2NiAxMi4xNDk0IDE3LjUxNjYgMTIuNDM5NyAxNy41NzVDMTMuMDI5MiAxNy42OTM4IDEzLjUzODggMTguMTQ0NSAxNC41NTc4IDE5LjA0NThDMTYuODYzMiAyMS4wODQ5IDE4LjAxNiAyMi4xMDQ1IDE5LjAwMzEgMjEuOTkxNUMxOS40NzM4IDIxLjkzNzYgMTkuOTE1OCAyMS43MzQ5IDIwLjI2NTkgMjEuNDEyM0MyMSAyMC43MzU3IDIxIDE5LjE4NzUgMjEgMTYuMDkwOVYxMS4wOTc1QzIxIDkuMjEwMTkgMjEgNy43MzgxNyAyMC44ODc3IDYuNTY3ODciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class BookmarkOffLinearIcon extends StatelessWidget {
  /// Creates the `bookmark-off` icon in the linear style.
  const BookmarkOffLinearIcon({
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
    name: 'bookmark-off',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 2L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.29916 20.7008C3 19.8314 3 18.3867 3 16.0909V11.0975C3 6.80891 3 4.6646 4.31802 3.3323C5.63604 2 7.75736 2 12 2C16.2426 2 18.364 2 19.682 3.3323C19.8485 3.50064 19.994 3.68194 20.1211 3.87889" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.49902 21.9565C6.39205 21.7436 7.51391 20.7513 9.44214 19.0458C10.4612 18.1445 10.9707 17.6938 11.5603 17.575C11.8506 17.5166 12.1494 17.5166 12.4397 17.575C13.0292 17.6938 13.5388 18.1445 14.5578 19.0458C16.8632 21.0849 18.016 22.1045 19.0031 21.9915C19.4738 21.9376 19.9158 21.7349 20.2659 21.4123C21 20.7357 21 19.1875 21 16.0909V11.0975C21 9.21019 21 7.73817 20.8877 6.56787" stroke="currentColor" stroke-linecap="round"/>''',
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
