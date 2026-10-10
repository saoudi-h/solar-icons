// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMi4wMTgzIDE4LjcxNDJDMTIuNDMyMyAxOC43MTQ1IDEyLjc2ODMgMTkuMDUwMiAxMi43NjgzIDE5LjQ2NDJDMTIuNzY4MyAxOS44NzgzIDEyLjQzMjMgMjAuMjE0IDEyLjAxODMgMjAuMjE0MkMxMS42MDQxIDIwLjIxNDIgMTEuMjY4MyAxOS44Nzg1IDExLjI2ODMgMTkuNDY0MkMxMS4yNjgzIDE5LjA1IDExLjYwNDEgMTguNzE0MiAxMi4wMTgzIDE4LjcxNDJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik04LjExNzg4IDE1LjM4MzJDMTAuMjU1NyAxMy4wNzYxIDEzLjc0NjggMTMuMDc2IDE1Ljg4NDUgMTUuMzgzMkMxNi4xNjU3IDE1LjY4NjkgMTYuMTQ3NyAxNi4xNjEyIDE1Ljg0NDQgMTYuNDQyOEMxNS41NDA3IDE2LjcyNDIgMTUuMDY1NCAxNi43MDY0IDE0Ljc4MzkgMTYuNDAyN0MxMy4yMzk4IDE0LjczNjIgMTAuNzYxNiAxNC43MzYyIDkuMjE3NDkgMTYuNDAyN0M4LjkzNjAyIDE2LjcwNjMgOC40NjE3MiAxNi43MjQgOC4xNTc5MiAxNi40NDI4QzcuODU0MyAxNi4xNjEyIDcuODM2NDUgMTUuNjg3IDguMTE3ODggMTUuMzgzMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class WiFiLowOutlineIcon extends StatelessWidget {
  /// Creates the `wi-fi-low` icon in the outline style.
  const WiFiLowOutlineIcon({
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
    name: 'wi-fi-low',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12.0183 18.7142C12.4323 18.7145 12.7683 19.0502 12.7683 19.4642C12.7683 19.8783 12.4323 20.214 12.0183 20.2142C11.6041 20.2142 11.2683 19.8785 11.2683 19.4642C11.2683 19.05 11.6041 18.7142 12.0183 18.7142Z" fill="currentColor"/>
<path d="M8.11788 15.3832C10.2557 13.0761 13.7468 13.076 15.8845 15.3832C16.1657 15.6869 16.1477 16.1612 15.8444 16.4428C15.5407 16.7242 15.0654 16.7064 14.7839 16.4027C13.2398 14.7362 10.7616 14.7362 9.21749 16.4027C8.93602 16.7063 8.46172 16.724 8.15792 16.4428C7.8543 16.1612 7.83645 15.687 8.11788 15.3832Z" fill="currentColor"/>''',
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
