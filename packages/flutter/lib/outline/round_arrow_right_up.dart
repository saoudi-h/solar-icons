// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-arrow-right-up` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyLjc1QzYuODkxMzcgMi43NSAyLjc1IDYuODkxMzcgMi43NSAxMkMyLjc1IDE3LjEwODYgNi44OTEzNyAyMS4yNSAxMiAyMS4yNUMxNy4xMDg2IDIxLjI1IDIxLjI1IDE3LjEwODYgMjEuMjUgMTJDMjEuMjUgNi44OTEzNyAxNy4xMDg2IDIuNzUgMTIgMi43NVpNMS4yNSAxMkMxLjI1IDYuMDYyOTQgNi4wNjI5NCAxLjI1IDEyIDEuMjVDMTcuOTM3MSAxLjI1IDIyLjc1IDYuMDYyOTQgMjIuNzUgMTJDMjIuNzUgMTcuOTM3MSAxNy45MzcxIDIyLjc1IDEyIDIyLjc1QzYuMDYyOTQgMjIuNzUgMS4yNSAxNy45MzcxIDEuMjUgMTJaTTkuNzUgOUM5Ljc1IDguNTg1NzkgMTAuMDg1OCA4LjI1IDEwLjUgOC4yNUgxNUMxNS40MTQyIDguMjUgMTUuNzUgOC41ODU3OSAxNS43NSA5VjEzLjVDMTUuNzUgMTMuOTE0MiAxNS40MTQyIDE0LjI1IDE1IDE0LjI1QzE0LjU4NTggMTQuMjUgMTQuMjUgMTMuOTE0MiAxNC4yNSAxMy41VjEwLjgxMDdMOS41MzAzMyAxNS41MzAzQzkuMjM3NDQgMTUuODIzMiA4Ljc2MjU2IDE1LjgyMzIgOC40Njk2NyAxNS41MzAzQzguMTc2NzggMTUuMjM3NCA4LjE3Njc4IDE0Ljc2MjYgOC40Njk2NyAxNC40Njk3TDEzLjE4OTMgOS43NUgxMC41QzEwLjA4NTggOS43NSA5Ljc1IDkuNDE0MjEgOS43NSA5WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class RoundArrowRightUpOutlineIcon extends StatelessWidget {
  /// Creates the `round-arrow-right-up` icon in the outline style.
  const RoundArrowRightUpOutlineIcon({
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
    name: 'round-arrow-right-up',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM9.75 9C9.75 8.58579 10.0858 8.25 10.5 8.25H15C15.4142 8.25 15.75 8.58579 15.75 9V13.5C15.75 13.9142 15.4142 14.25 15 14.25C14.5858 14.25 14.25 13.9142 14.25 13.5V10.8107L9.53033 15.5303C9.23744 15.8232 8.76256 15.8232 8.46967 15.5303C8.17678 15.2374 8.17678 14.7626 8.46967 14.4697L13.1893 9.75H10.5C10.0858 9.75 9.75 9.41421 9.75 9Z" fill="currentColor"/>''',
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
