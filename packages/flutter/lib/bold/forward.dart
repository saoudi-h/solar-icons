// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTMuOTY5NyA2LjQ2OTY3QzE0LjI2MjYgNi4xNzY3OCAxNC43Mzc0IDYuMTc2NzggMTUuMDMwMyA2LjQ2OTY3TDIwLjAzMDMgMTEuNDY5N0MyMC4zMjMyIDExLjc2MjYgMjAuMzIzMiAxMi4yMzc0IDIwLjAzMDMgMTIuNTMwM0wxNS4wMzAzIDE3LjUzMDNDMTQuNzM3NCAxNy44MjMyIDE0LjI2MjYgMTcuODIzMiAxMy45Njk3IDE3LjUzMDNDMTMuNjc2OCAxNy4yMzc0IDEzLjY3NjggMTYuNzYyNiAxMy45Njk3IDE2LjQ2OTdMMTcuNjg5MyAxMi43NUw5LjUgMTIuNzVDOC43ODY2OCAxMi43NSA3LjcwMDAyIDEyLjk3MDIgNi44MTMyMyAxMy42MDg3QzUuOTY0NjggMTQuMjE5NiA1LjI1IDE1LjI0NDQgNS4yNSAxN0M1LjI1IDE3LjQxNDIgNC45MTQyMSAxNy43NSA0LjUgMTcuNzVDNC4wODU3OSAxNy43NSAzLjc1IDE3LjQxNDIgMy43NSAxN0MzLjc1IDE0Ljc1NTYgNC43MDE5OCAxMy4yODA0IDUuOTM2NzcgMTIuMzkxM0M3LjEzMzMyIDExLjUyOTggOC41NDY2NSAxMS4yNSA5LjUgMTEuMjVMMTcuNjg5MyAxMS4yNUwxMy45Njk3IDcuNTMwMzNDMTMuNjc2OCA3LjIzNzQ0IDEzLjY3NjggNi43NjI1NiAxMy45Njk3IDYuNDY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class ForwardBoldIcon extends StatelessWidget {
  /// Creates the `forward` icon in the bold style.
  const ForwardBoldIcon({
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
    name: 'forward',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M13.9697 6.46967C14.2626 6.17678 14.7374 6.17678 15.0303 6.46967L20.0303 11.4697C20.3232 11.7626 20.3232 12.2374 20.0303 12.5303L15.0303 17.5303C14.7374 17.8232 14.2626 17.8232 13.9697 17.5303C13.6768 17.2374 13.6768 16.7626 13.9697 16.4697L17.6893 12.75L9.5 12.75C8.78668 12.75 7.70002 12.9702 6.81323 13.6087C5.96468 14.2196 5.25 15.2444 5.25 17C5.25 17.4142 4.91421 17.75 4.5 17.75C4.08579 17.75 3.75 17.4142 3.75 17C3.75 14.7556 4.70198 13.2804 5.93677 12.3913C7.13332 11.5298 8.54665 11.25 9.5 11.25L17.6893 11.25L13.9697 7.53033C13.6768 7.23744 13.6768 6.76256 13.9697 6.46967Z" fill="currentColor"/>''',
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
