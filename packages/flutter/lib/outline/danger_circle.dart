// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiA2LjI1QzEyLjQxNDIgNi4yNSAxMi43NSA2LjU4NTc5IDEyLjc1IDdWMTNDMTIuNzUgMTMuNDE0MiAxMi40MTQyIDEzLjc1IDEyIDEzLjc1QzExLjU4NTggMTMuNzUgMTEuMjUgMTMuNDE0MiAxMS4yNSAxM1Y3QzExLjI1IDYuNTg1NzkgMTEuNTg1OCA2LjI1IDEyIDYuMjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMiAxN0MxMi41NTIzIDE3IDEzIDE2LjU1MjMgMTMgMTZDMTMgMTUuNDQ3NyAxMi41NTIzIDE1IDEyIDE1QzExLjQ0NzcgMTUgMTEgMTUuNDQ3NyAxMSAxNkMxMSAxNi41NTIzIDExLjQ0NzcgMTcgMTIgMTdaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMS4yNSAxMkMxLjI1IDYuMDYyOTQgNi4wNjI5NCAxLjI1IDEyIDEuMjVDMTcuOTM3MSAxLjI1IDIyLjc1IDYuMDYyOTQgMjIuNzUgMTJDMjIuNzUgMTcuOTM3MSAxNy45MzcxIDIyLjc1IDEyIDIyLjc1QzYuMDYyOTQgMjIuNzUgMS4yNSAxNy45MzcxIDEuMjUgMTJaTTEyIDIuNzVDNi44OTEzNyAyLjc1IDIuNzUgNi44OTEzNyAyLjc1IDEyQzIuNzUgMTcuMTA4NiA2Ljg5MTM3IDIxLjI1IDEyIDIxLjI1QzE3LjEwODYgMjEuMjUgMjEuMjUgMTcuMTA4NiAyMS4yNSAxMkMyMS4yNSA2Ljg5MTM3IDE3LjEwODYgMi43NSAxMiAyLjc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class DangerCircleOutlineIcon extends StatelessWidget {
  /// Creates the `danger-circle` icon in the outline style.
  const DangerCircleOutlineIcon({
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
    name: 'danger-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12 6.25C12.4142 6.25 12.75 6.58579 12.75 7V13C12.75 13.4142 12.4142 13.75 12 13.75C11.5858 13.75 11.25 13.4142 11.25 13V7C11.25 6.58579 11.5858 6.25 12 6.25Z" fill="currentColor"/>
<path d="M12 17C12.5523 17 13 16.5523 13 16C13 15.4477 12.5523 15 12 15C11.4477 15 11 15.4477 11 16C11 16.5523 11.4477 17 12 17Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75Z" fill="currentColor"/>''',
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
