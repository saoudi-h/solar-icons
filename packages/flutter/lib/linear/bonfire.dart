// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOCA4LjgwNzQ1QzE4IDEzLjc2MTUgMTMuNzMzMyAxNSAxMS42IDE1QzkuNzMzMzMgMTUgNiAxMy43NjE1IDYgOC44MDc0NUM2IDYuNzEwMTcgNy4yMDgzOSA1LjM1ODI2IDguMjYwOTkgNC42NTI3NEM4Ljc5NjM4IDQuMjkzODggOS40ODM1NCA0LjU1MjAxIDkuNTcyOTYgNS4xNzYyNEM5Ljc1MTI3IDYuNDIxIDEwLjg3NzcgNy4zNDk0NCAxMS41NTk2IDYuMjc5OThDMTIuMTQyNCA1LjM2NjE0IDEyLjM1MjkgNC4xMzE2OSAxMi4zNTI5IDMuMzg4OTZDMTIuMzUyOSAyLjI4OTY1IDEzLjUwMyAxLjU5MTA4IDE0LjQwMDkgMi4yNjQ2QzE2LjE1MTIgMy41Nzc0IDE4IDUuNzc2IDE4IDguODA3NDVaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIwIDE1TDQgMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNCAxNUw5IDE3LjE4NzVNMjAgMjJMMTQuNSAxOS41OTM4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE1IDEwQzE0LjggMTAuNjY2NyAxMy45MiAxMiAxMiAxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BonfireLinearIcon extends StatelessWidget {
  /// Creates the `bonfire` icon in the linear style.
  const BonfireLinearIcon({
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
    name: 'bonfire',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M18 8.80745C18 13.7615 13.7333 15 11.6 15C9.73333 15 6 13.7615 6 8.80745C6 6.71017 7.20839 5.35826 8.26099 4.65274C8.79638 4.29388 9.48354 4.55201 9.57296 5.17624C9.75127 6.421 10.8777 7.34944 11.5596 6.27998C12.1424 5.36614 12.3529 4.13169 12.3529 3.38896C12.3529 2.28965 13.503 1.59108 14.4009 2.2646C16.1512 3.5774 18 5.776 18 8.80745Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 15L4 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 15L9 17.1875M20 22L14.5 19.5938" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 10C14.8 10.6667 13.92 12 12 12" stroke="currentColor" stroke-linecap="round"/>''',
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
