// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIgMS4yNUM2LjA2Mjk0IDEuMjUgMS4yNSA2LjA2Mjk0IDEuMjUgMTJDMS4yNSAxNy45MzcxIDYuMDYyOTQgMjIuNzUgMTIgMjIuNzVDMTcuOTM3MSAyMi43NSAyMi43NSAxNy45MzcxIDIyLjc1IDEyQzIyLjc1IDYuMDYyOTQgMTcuOTM3MSAxLjI1IDEyIDEuMjVaTTIuNzUgMTJDMi43NSA2Ljg5MTM3IDYuODkxMzcgMi43NSAxMiAyLjc1QzE0LjI4NDUgMi43NSAxNi4zNzU2IDMuNTc4MTcgMTcuOTg5NCA0Ljk1MDY2QzE3Ljk4MjcgNC45NTY4NSAxNy45NzYyIDQuOTYzMTkgMTcuOTY5NyA0Ljk2OTY3TDQuOTY5NjkgMTcuOTY5NEM0Ljk2MzE3IDE3Ljk3NiA0Ljk1Njc5IDE3Ljk4MjYgNC45NTA1NiAxNy45ODkzQzMuNTc4MTMgMTYuMzc1NSAyLjc1IDE0LjI4NDUgMi43NSAxMlpNNi4wMTA1IDE5LjA0OTJDNy42MjQzMiAyMC40MjE4IDkuNzE1NDQgMjEuMjUgMTIgMjEuMjVDMTcuMTA4NiAyMS4yNSAyMS4yNSAxNy4xMDg2IDIxLjI1IDEyQzIxLjI1IDkuNzE1NSAyMC40MjE4IDcuNjI0NDIgMTkuMDQ5MyA2LjAxMDYyQzE5LjA0MzEgNi4wMTcyOCAxOS4wMzY4IDYuMDIzODYgMTkuMDMwMyA2LjAzMDM0TDYuMDMwMzQgMTkuMDMwMUM2LjAyMzgyIDE5LjAzNjYgNi4wMTcyIDE5LjA0MyA2LjAxMDUgMTkuMDQ5MloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ForbiddenCircleOutlineIcon extends StatelessWidget {
  /// Creates the `forbidden-circle` icon in the outline style.
  const ForbiddenCircleOutlineIcon({
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
    name: 'forbidden-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C6.06294 1.25 1.25 6.06294 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 6.06294 17.9371 1.25 12 1.25ZM2.75 12C2.75 6.89137 6.89137 2.75 12 2.75C14.2845 2.75 16.3756 3.57817 17.9894 4.95066C17.9827 4.95685 17.9762 4.96319 17.9697 4.96967L4.96969 17.9694C4.96317 17.976 4.95679 17.9826 4.95056 17.9893C3.57813 16.3755 2.75 14.2845 2.75 12ZM6.0105 19.0492C7.62432 20.4218 9.71544 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 9.7155 20.4218 7.62442 19.0493 6.01062C19.0431 6.01728 19.0368 6.02386 19.0303 6.03034L6.03034 19.0301C6.02382 19.0366 6.0172 19.043 6.0105 19.0492Z" fill="currentColor"/>''',
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
