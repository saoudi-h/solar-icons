// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik03LjAwNzMxIDE0LjcwNDdDNy4zMzczMiAxMy41NTUgOC4wOTYyMiAxMi4zOTE3IDkuMjUxMzYgMTAuODQ2OUM5LjkxOTk5IDkuOTUyNzIgMTAuNzA4MiA5LjAyOTY0IDExLjU5NDYgOC4xMjEzOUMxNS4yNjI1IDQuMzYzMjEgMTkuMjIyIDIuMjc5IDIwLjQzODQgMy40NjYxNkMyMS4yNzM5IDQuMjgxNjMgMjAuNTk3NyA2LjQyODU0IDE4LjkwMzcgOC45MTEwM005LjI1MTM2IDEwLjg0NjlDMTAuMTkxIDEyLjUzOTUgMTEuNjA3NiAxMy45MzA4IDEzLjMxOTYgMTQuODM5M003LjAwNzMxIDE0LjcwNDdDNS44NDA2NSAxNC43MDQ3IDMuNjM2ODggMTQuODQ1IDMuNTMxNDggMTcuNzk2M0MzLjQ3NzIgMTkuMzE2NCAyLjA0ODczIDE5LjcwOTQgMi4yNzQ0IDIwLjU5ODZDMi41MDAwNyAyMS40ODc5IDkuODgwMTYgMjIuMTkwNyA5LjQ5MzQ1IDE3LjE2MzVNNy4wMDczMSAxNC43MDQ3QzcuODA3MyAxNS45MDQ3IDkuMTYwMTIgMTYuOTk2OCA5LjQ5MzQ1IDE3LjE2MzVNMTUuOTk5NCAxMi40MjA1QzE1LjE1NjcgMTMuMjg0IDE0LjI1OTggMTQuMDg0IDEzLjMxOTYgMTQuODM5M0MxMS45MzI3IDE1LjkyODQgMTAuNTgxMiAxNi43NjUyIDkuNDkzNDUgMTcuMTYzNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class PaintBrushBrokenIcon extends StatelessWidget {
  /// Creates the `paint-brush` icon in the broken style.
  const PaintBrushBrokenIcon({
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
    name: 'paint-brush',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M7.00731 14.7047C7.33732 13.555 8.09622 12.3917 9.25136 10.8469C9.91999 9.95272 10.7082 9.02964 11.5946 8.12139C15.2625 4.36321 19.222 2.279 20.4384 3.46616C21.2739 4.28163 20.5977 6.42854 18.9037 8.91103M9.25136 10.8469C10.191 12.5395 11.6076 13.9308 13.3196 14.8393M7.00731 14.7047C5.84065 14.7047 3.63688 14.845 3.53148 17.7963C3.4772 19.3164 2.04873 19.7094 2.2744 20.5986C2.50007 21.4879 9.88016 22.1907 9.49345 17.1635M7.00731 14.7047C7.8073 15.9047 9.16012 16.9968 9.49345 17.1635M15.9994 12.4205C15.1567 13.284 14.2598 14.084 13.3196 14.8393C11.9327 15.9284 10.5812 16.7652 9.49345 17.1635" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
