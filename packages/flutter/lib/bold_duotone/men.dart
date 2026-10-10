// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iMTAiIGN5PSIxNCIgcj0iOCIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTYuOTk5OCAxLjI1QzE2LjU4NTYgMS4yNSAxNi4yNDk4IDEuNTg1NzkgMTYuMjQ5OCAyQzE2LjI0OTggMi40MTQyMSAxNi41ODU2IDIuNzUgMTYuOTk5OCAyLjc1SDIwLjE4OTFMMTUuMTAxNiA3LjgzNzU4QzE1LjQ4NzMgOC4xNTcyOCAxNS44NDI1IDguNTEyNSAxNi4xNjIyIDguODk4MjRMMjEuMjQ5OCAzLjgxMDY2VjdDMjEuMjQ5OCA3LjQxNDIxIDIxLjU4NTYgNy43NSAyMS45OTk4IDcuNzVDMjIuNDE0IDcuNzUgMjIuNzQ5OCA3LjQxNDIxIDIyLjc0OTggN1YyLjI1QzIyLjc0OTggMS42OTc3MiAyMi4zMDIxIDEuMjUgMjEuNzQ5OCAxLjI1SDE2Ljk5OThaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class MenBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `men` icon in the boldDuotone style.
  const MenBoldDuotoneIcon({
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
    name: 'men',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.9998 1.25C16.5856 1.25 16.2498 1.58579 16.2498 2C16.2498 2.41421 16.5856 2.75 16.9998 2.75H20.1891L15.1016 7.83758C15.4873 8.15728 15.8425 8.5125 16.1622 8.89824L21.2498 3.81066V7C21.2498 7.41421 21.5856 7.75 21.9998 7.75C22.414 7.75 22.7498 7.41421 22.7498 7V2.25C22.7498 1.69772 22.3021 1.25 21.7498 1.25H16.9998Z" fill="currentColor"/>''',
    accent:
        r'''<circle opacity="0.5" cx="10" cy="14" r="8" fill="currentColor"/>''',
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
