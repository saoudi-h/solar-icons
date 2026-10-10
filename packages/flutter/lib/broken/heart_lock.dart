// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik03LjA3MTYxIDE4Ljk1MDNDNy44MTQ1NCAxOS41NDIzIDguNTczMTggMjAuMDg2OSA5LjI2NTU2IDIwLjYxNTRDMTAuMiAyMS4zMjg1IDExLjEgMjIgMTIgMjJDMTIuOSAyMiAxMy44IDIxLjMyODUgMTQuNzM0NCAyMC42MTU0QzE3LjM4MjUgMTguNTk0MyAyMSAxNi4zMzY0IDIxIDEyLjA5OTJDMjEgNy44NjE5NiAxNi4wNDk5IDQuODU3MDEgMTIgOC45MzA2MkM3Ljk1MDE0IDQuODU3MDEgMyA3Ljg2MTk2IDMgMTIuMDk5MkMzIDEzLjQwNzggMy4zNDUwNCAxNC41Mjc2IDMuOSAxNS41MSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNyA3QzE3IDMuNjg2MjkgMTUuMDEyNSAyIDEyIDJDOC45ODc1NCAyIDcgMy42ODYyOSA3IDciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMTJWMTQuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class HeartLockBrokenIcon extends StatelessWidget {
  /// Creates the `heart-lock` icon in the broken style.
  const HeartLockBrokenIcon({
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
    name: 'heart-lock',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7.07161 18.9503C7.81454 19.5423 8.57318 20.0869 9.26556 20.6154C10.2 21.3285 11.1 22 12 22C12.9 22 13.8 21.3285 14.7344 20.6154C17.3825 18.5943 21 16.3364 21 12.0992C21 7.86196 16.0499 4.85701 12 8.93062C7.95014 4.85701 3 7.86196 3 12.0992C3 13.4078 3.34504 14.5276 3.9 15.51" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M17 7C17 3.68629 15.0125 2 12 2C8.98754 2 7 3.68629 7 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 12V14.5" stroke="currentColor" stroke-linecap="round"/>''',
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
