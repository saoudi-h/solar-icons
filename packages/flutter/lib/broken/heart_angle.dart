// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNCA3LjQ5OTkxTDEyIDUuNTAwNjNDNy41MDAxNiAwLjgyNTQ2NCAyIDQuMjc0MTYgMiA5LjEzNzFDMiAxMC42MzkgMi4zODMzOCAxMS45MjQyIDMgMTMuMDUxNk0xMiA1LjUwMDYzQzE2LjQ5OTggMC44MjU0NjQgMjIgNC4yNzQxNiAyMiA5LjEzNzFDMjIgMTQgMTcuOTgwNiAxNi41OTE0IDE1LjAzODMgMTguOTEwOUMxNCAxOS43Mjk0IDEzIDIwLjUgMTIgMjAuNUMxMSAyMC41IDEwIDE5LjcyOTQgOC45NjE3MyAxOC45MTA5QzguMTkyNDMgMTguMzA0NCA3LjM0OTQ5IDE3LjY3OTQgNi41MjQwMSAxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class HeartAngleBrokenIcon extends StatelessWidget {
  /// Creates the `heart-angle` icon in the broken style.
  const HeartAngleBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M14 7.49991L12 5.50063C7.50016 0.825464 2 4.27416 2 9.1371C2 10.639 2.38338 11.9242 3 13.0516M12 5.50063C16.4998 0.825464 22 4.27416 22 9.1371C22 14 17.9806 16.5914 15.0383 18.9109C14 19.7294 13 20.5 12 20.5C11 20.5 10 19.7294 8.96173 18.9109C8.19243 18.3044 7.34949 17.6794 6.52401 17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
