// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04IDEzSDE2TTggMTNWMThDOCAxOS44ODU2IDggMjAuODI4NCA4LjU4NTc5IDIxLjQxNDJDOS4xNzE1NyAyMiAxMC4xMTQ0IDIyIDEyIDIyQzEzLjg4NTYgMjIgMTQuODI4NCAyMiAxNS40MTQyIDIxLjQxNDJDMTYgMjAuODI4NCAxNiAxOS44ODU2IDE2IDE4VjEzTTggMTNDNS4yNDIxIDEyLjM4NzEgMy4wNjcxNyAxMC4yNjg3IDIuMzgxOTcgNy41Mjc4N0wyIDZNMTYgMTNDMTcuNzEwNyAxMyAxOS4xNTA2IDE0LjI4MDQgMTkuMzUwNSAxNS45Nzk1TDIwIDIxLjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSIxMiIgY3k9IjYiIHI9IjQiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class UserHandUpLinearIcon extends StatelessWidget {
  /// Creates the `user-hand-up` icon in the linear style.
  const UserHandUpLinearIcon({
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
    name: 'user-hand-up',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8 13H16M8 13V18C8 19.8856 8 20.8284 8.58579 21.4142C9.17157 22 10.1144 22 12 22C13.8856 22 14.8284 22 15.4142 21.4142C16 20.8284 16 19.8856 16 18V13M8 13C5.2421 12.3871 3.06717 10.2687 2.38197 7.52787L2 6M16 13C17.7107 13 19.1506 14.2804 19.3505 15.9795L20 21.5" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="6" r="4" stroke="currentColor" stroke-linecap="round"/>''',
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
