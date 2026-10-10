// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOSA4Ljk3NDE0VjE0Ljk4NjFDMTkgMTguODU5OCAxNS44NjYgMjIgMTIgMjJDOC4xMzQwMSAyMiA1IDE4Ljg1OTggNSAxNC45ODYxVjguOTc0MTRDNSA1LjM1NDMzIDcuNzM2NjggMi4zNzQ5NyAxMS4yNSAyVjUuMzg1NDJDMTAuNjU4OCA1LjY2Njg1IDEwLjI1IDYuMjcwNjcgMTAuMjUgNi45NzAxNlY4Ljk3NDE0QzEwLjI1IDkuOTQyNTYgMTEuMDMzNSAxMC43Mjc2IDEyIDEwLjcyNzZDMTIuOTY2NSAxMC43Mjc2IDEzLjc1IDkuOTQyNTYgMTMuNzUgOC45NzQxNFY2Ljk3MDE2QzEzLjc1IDYuMjcwNjcgMTMuMzQxMiA1LjY2Njg1IDEyLjc1IDUuMzg1NDJWMkMxNi4yNjMzIDIuMzc0OTcgMTkgNS4zNTQzMyAxOSA4Ljk3NDE0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class MouseBoldIcon extends StatelessWidget {
  /// Creates the `mouse` icon in the bold style.
  const MouseBoldIcon({
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
    name: 'mouse',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M19 8.97414V14.9861C19 18.8598 15.866 22 12 22C8.13401 22 5 18.8598 5 14.9861V8.97414C5 5.35433 7.73668 2.37497 11.25 2V5.38542C10.6588 5.66685 10.25 6.27067 10.25 6.97016V8.97414C10.25 9.94256 11.0335 10.7276 12 10.7276C12.9665 10.7276 13.75 9.94256 13.75 8.97414V6.97016C13.75 6.27067 13.3412 5.66685 12.75 5.38542V2C16.2633 2.37497 19 5.35433 19 8.97414Z" fill="currentColor"/>''',
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
