// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAxMS4yNUMxMi40MTQyIDExLjI1IDEyLjc1IDExLjU4NTggMTIuNzUgMTJDMTIuNzUgMTIuNDE0MiAxMi40MTQyIDEyLjc1IDEyIDEyLjc1QzExLjU4NTggMTIuNzUgMTEuMjUgMTIuNDE0MiAxMS4yNSAxMkMxMS4yNSAxMS41ODU4IDExLjU4NTggMTEuMjUgMTIgMTEuMjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMS4yNUMxNy45MzcxIDEuMjUgMjIuNzUgNi4wNjI5NCAyMi43NSAxMkMyMi43NSAxNy45MzcxIDE3LjkzNzEgMjIuNzUgMTIgMjIuNzVDNi4wNjI5NCAyMi43NSAxLjI1IDE3LjkzNzEgMS4yNSAxMkMxLjI1IDYuMDYyOTQgNi4wNjI5NCAxLjI1IDEyIDEuMjVaTTEyIDIuNzVDNi44OTEzNyAyLjc1IDIuNzUgNi44OTEzNyAyLjc1IDEyQzIuNzUgMTcuMTA4NiA2Ljg5MTM3IDIxLjI1IDEyIDIxLjI1QzE3LjEwODYgMjEuMjUgMjEuMjUgMTcuMTA4NiAyMS4yNSAxMkMyMS4yNSA2Ljg5MTM3IDE3LjEwODYgMi43NSAxMiAyLjc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class CircleDotOutlineIcon extends StatelessWidget {
  /// Creates the `circle-dot` icon in the outline style.
  const CircleDotOutlineIcon({
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
    name: 'circle-dot',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12 11.25C12.4142 11.25 12.75 11.5858 12.75 12C12.75 12.4142 12.4142 12.75 12 12.75C11.5858 12.75 11.25 12.4142 11.25 12C11.25 11.5858 11.5858 11.25 12 11.25Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12C1.25 6.06294 6.06294 1.25 12 1.25ZM12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75Z" fill="currentColor"/>''',
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
