// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yIDkuMTM3MUMyIDEzLjU0MjIgNS4yOTgxOSAxNi4wODMzIDguMTA2MjcgMTguMjQ2OEM4LjM5ODE0IDE4LjQ3MTcgOC42ODQ3MSAxOC42OTI1IDguOTYxNzMgMTguOTEwOUMxMCAxOS43Mjk0IDExIDIwLjUgMTIgMjAuNVY1LjUwMDYzQzcuNTAwMTYgMC44MjU0NjQgMiA0LjI3NDE2IDIgOS4xMzcxWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTQgNy40OTkyOEwxMiA1LjUwMDYzVjIwLjVDMTMgMjAuNSAxNCAxOS43Mjk0IDE1LjAzODMgMTguOTEwOUMxNS4zMTUzIDE4LjY5MjUgMTUuNjAxOSAxOC40NzE3IDE1Ljg5MzcgMTguMjQ2OEMxOC43MDE4IDE2LjA4MzMgMjIgMTMuNTQyMiAyMiA5LjEzNzFDMjIgNC42NzQ2NSAxNy4zNjg1IDEuNDAzMDkgMTMuMTI4NSA0LjUwNzEyTDE1LjA2MDUgNi40Mzg0M0MxNS4zNTM0IDYuNzMxMjcgMTUuMzUzNSA3LjIwNjE0IDE1LjA2MDcgNy40OTkwOEMxNC43Njc4IDcuNzkyMDMgMTQuMjkyOSA3Ljc5MjEyIDE0IDcuNDk5MjhaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class HeartAngleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `heart-angle` icon in the boldDuotone style.
  const HeartAngleBoldDuotoneIcon({
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
    name: 'heart-angle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14 7.49928L12 5.50063V20.5C13 20.5 14 19.7294 15.0383 18.9109C15.3153 18.6925 15.6019 18.4717 15.8937 18.2468C18.7018 16.0833 22 13.5422 22 9.1371C22 4.67465 17.3685 1.40309 13.1285 4.50712L15.0605 6.43843C15.3534 6.73127 15.3535 7.20614 15.0607 7.49908C14.7678 7.79203 14.2929 7.79212 14 7.49928Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M2 9.1371C2 13.5422 5.29819 16.0833 8.10627 18.2468C8.39814 18.4717 8.68471 18.6925 8.96173 18.9109C10 19.7294 11 20.5 12 20.5V5.50063C7.50016 0.825464 2 4.27416 2 9.1371Z" fill="currentColor"/>''',
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
