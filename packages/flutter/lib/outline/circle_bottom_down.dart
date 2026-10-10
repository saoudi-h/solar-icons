// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `circle-bottom-down` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTkuNDY5NzMgMTMuNDY5N0M5Ljc2MjYyIDEzLjE3NjggMTAuMjM3NCAxMy4xNzY4IDEwLjUzMDMgMTMuNDY5N0MxMC44MjMyIDEzLjc2MjYgMTAuODIzMiAxNC4yMzc0IDEwLjUzMDMgMTQuNTMwM0wzLjgxMDU1IDIxLjI1SDhDOC40MTQyMSAyMS4yNSA4Ljc1IDIxLjU4NTggOC43NSAyMkM4Ljc1IDIyLjQxNDIgOC40MTQyMSAyMi43NSA4IDIyLjc1SDJDMS41ODU3OSAyMi43NSAxLjI1IDIyLjQxNDIgMS4yNSAyMlYxNkMxLjI1IDE1LjU4NTggMS41ODU3OSAxNS4yNSAyIDE1LjI1QzIuNDE0MjEgMTUuMjUgMi43NSAxNS41ODU4IDIuNzUgMTZWMjAuMTg5NUw5LjQ2OTczIDEzLjQ2OTdaTTEyIDEuMjVDMTcuOTM3MSAxLjI1IDIyLjc1IDYuMDYyOTQgMjIuNzUgMTJDMjIuNzUgMTcuOTM3MSAxNy45MzcxIDIyLjc1IDEyIDIyLjc1QzExLjU4NTggMjIuNzUgMTEuMjUgMjIuNDE0MiAxMS4yNSAyMkMxMS4yNSAyMS41ODU4IDExLjU4NTggMjEuMjUgMTIgMjEuMjVDMTcuMTA4NiAyMS4yNSAyMS4yNSAxNy4xMDg2IDIxLjI1IDEyQzIxLjI1IDYuODkxMzcgMTcuMTA4NiAyLjc1IDEyIDIuNzVDNi44OTEzNyAyLjc1IDIuNzUgNi44OTEzNyAyLjc1IDEyQzIuNzUgMTIuNDE0MiAyLjQxNDIxIDEyLjc1IDIgMTIuNzVDMS41ODU3OSAxMi43NSAxLjI1IDEyLjQxNDIgMS4yNSAxMkMxLjI1IDYuMDYyOTQgNi4wNjI5NCAxLjI1IDEyIDEuMjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class CircleBottomDownOutlineIcon extends StatelessWidget {
  /// Creates the `circle-bottom-down` icon in the outline style.
  const CircleBottomDownOutlineIcon({
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
    name: 'circle-bottom-down',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M9.46973 13.4697C9.76262 13.1768 10.2374 13.1768 10.5303 13.4697C10.8232 13.7626 10.8232 14.2374 10.5303 14.5303L3.81055 21.25H8C8.41421 21.25 8.75 21.5858 8.75 22C8.75 22.4142 8.41421 22.75 8 22.75H2C1.58579 22.75 1.25 22.4142 1.25 22V16C1.25 15.5858 1.58579 15.25 2 15.25C2.41421 15.25 2.75 15.5858 2.75 16V20.1895L9.46973 13.4697ZM12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C11.5858 22.75 11.25 22.4142 11.25 22C11.25 21.5858 11.5858 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 12.4142 2.41421 12.75 2 12.75C1.58579 12.75 1.25 12.4142 1.25 12C1.25 6.06294 6.06294 1.25 12 1.25Z" fill="currentColor"/>''',
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
