// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-arrow-right-down` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyLjc1QzYuODkxMzcgMi43NSAyLjc1IDYuODkxMzcgMi43NSAxMkMyLjc1IDE3LjEwODYgNi44OTEzNyAyMS4yNSAxMiAyMS4yNUMxNy4xMDg2IDIxLjI1IDIxLjI1IDE3LjEwODYgMjEuMjUgMTJDMjEuMjUgNi44OTEzNyAxNy4xMDg2IDIuNzUgMTIgMi43NVpNMS4yNSAxMkMxLjI1IDYuMDYyOTQgNi4wNjI5NCAxLjI1IDEyIDEuMjVDMTcuOTM3MSAxLjI1IDIyLjc1IDYuMDYyOTQgMjIuNzUgMTJDMjIuNzUgMTcuOTM3MSAxNy45MzcxIDIyLjc1IDEyIDIyLjc1QzYuMDYyOTQgMjIuNzUgMS4yNSAxNy45MzcxIDEuMjUgMTJaTTguNDY5NjcgOC40Njk2N0M4Ljc2MjU2IDguMTc2NzggOS4yMzc0NCA4LjE3Njc4IDkuNTMwMzMgOC40Njk2N0wxNC4yNSAxMy4xODkzVjEwLjVDMTQuMjUgMTAuMDg1OCAxNC41ODU4IDkuNzUgMTUgOS43NUMxNS40MTQyIDkuNzUgMTUuNzUgMTAuMDg1OCAxNS43NSAxMC41VjE1QzE1Ljc1IDE1LjQxNDIgMTUuNDE0MiAxNS43NSAxNSAxNS43NUgxMC41QzEwLjA4NTggMTUuNzUgOS43NSAxNS40MTQyIDkuNzUgMTVDOS43NSAxNC41ODU4IDEwLjA4NTggMTQuMjUgMTAuNSAxNC4yNUgxMy4xODkzTDguNDY5NjcgOS41MzAzM0M4LjE3Njc4IDkuMjM3NDQgOC4xNzY3OCA4Ljc2MjU2IDguNDY5NjcgOC40Njk2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class RoundArrowRightDownOutlineIcon extends StatelessWidget {
  /// Creates the `round-arrow-right-down` icon in the outline style.
  const RoundArrowRightDownOutlineIcon({
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
    name: 'round-arrow-right-down',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM8.46967 8.46967C8.76256 8.17678 9.23744 8.17678 9.53033 8.46967L14.25 13.1893V10.5C14.25 10.0858 14.5858 9.75 15 9.75C15.4142 9.75 15.75 10.0858 15.75 10.5V15C15.75 15.4142 15.4142 15.75 15 15.75H10.5C10.0858 15.75 9.75 15.4142 9.75 15C9.75 14.5858 10.0858 14.25 10.5 14.25H13.1893L8.46967 9.53033C8.17678 9.23744 8.17678 8.76256 8.46967 8.46967Z" fill="currentColor"/>''',
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
