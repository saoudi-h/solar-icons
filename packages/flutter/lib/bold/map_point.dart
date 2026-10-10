// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMkM3LjU4MTcyIDIgNCA2LjAwMjU4IDQgMTAuNUM0IDE0Ljk2MjIgNi41NTMzMiAxOS44MTI0IDEwLjUzNzEgMjEuNjc0NEMxMS40NjU3IDIyLjEwODUgMTIuNTM0MyAyMi4xMDg1IDEzLjQ2MjkgMjEuNjc0NEMxNy40NDY3IDE5LjgxMjQgMjAgMTQuOTYyMiAyMCAxMC41QzIwIDYuMDAyNTggMTYuNDE4MyAyIDEyIDJaTTEyIDEyQzEzLjEwNDYgMTIgMTQgMTEuMTA0NiAxNCAxMEMxNCA4Ljg5NTQzIDEzLjEwNDYgOCAxMiA4QzEwLjg5NTQgOCAxMCA4Ljg5NTQzIDEwIDEwQzEwIDExLjEwNDYgMTAuODk1NCAxMiAxMiAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class MapPointBoldIcon extends StatelessWidget {
  /// Creates the `map-point` icon in the bold style.
  const MapPointBoldIcon({
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
    name: 'map-point',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C7.58172 2 4 6.00258 4 10.5C4 14.9622 6.55332 19.8124 10.5371 21.6744C11.4657 22.1085 12.5343 22.1085 13.4629 21.6744C17.4467 19.8124 20 14.9622 20 10.5C20 6.00258 16.4183 2 12 2ZM12 12C13.1046 12 14 11.1046 14 10C14 8.89543 13.1046 8 12 8C10.8954 8 10 8.89543 10 10C10 11.1046 10.8954 12 12 12Z" fill="currentColor"/>''',
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
