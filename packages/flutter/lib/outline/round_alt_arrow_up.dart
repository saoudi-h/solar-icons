// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-alt-arrow-up` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyLjc1QzYuODkxMzcgMi43NSAyLjc1IDYuODkxMzcgMi43NSAxMkMyLjc1IDE3LjEwODYgNi44OTEzNyAyMS4yNSAxMiAyMS4yNUMxNy4xMDg2IDIxLjI1IDIxLjI1IDE3LjEwODYgMjEuMjUgMTJDMjEuMjUgNi44OTEzNyAxNy4xMDg2IDIuNzUgMTIgMi43NVpNMS4yNSAxMkMxLjI1IDYuMDYyOTQgNi4wNjI5NCAxLjI1IDEyIDEuMjVDMTcuOTM3MSAxLjI1IDIyLjc1IDYuMDYyOTQgMjIuNzUgMTJDMjIuNzUgMTcuOTM3MSAxNy45MzcxIDIyLjc1IDEyIDIyLjc1QzYuMDYyOTQgMjIuNzUgMS4yNSAxNy45MzcxIDEuMjUgMTJaTTguNDY5NjcgMTIuOTY5N0wxMS40Njk3IDkuOTY5NjdDMTEuNzYyNiA5LjY3Njc4IDEyLjIzNzQgOS42NzY3OCAxMi41MzAzIDkuOTY5NjdMMTUuNTMwMyAxMi45Njk3QzE1LjgyMzIgMTMuMjYyNiAxNS44MjMyIDEzLjczNzQgMTUuNTMwMyAxNC4wMzAzQzE1LjIzNzQgMTQuMzIzMiAxNC43NjI2IDE0LjMyMzIgMTQuNDY5NyAxNC4wMzAzTDEyIDExLjU2MDdMOS41MzAzMyAxNC4wMzAzQzkuMjM3NDQgMTQuMzIzMiA4Ljc2MjU2IDE0LjMyMzIgOC40Njk2NyAxNC4wMzAzQzguMTc2NzggMTMuNzM3NCA4LjE3Njc4IDEzLjI2MjYgOC40Njk2NyAxMi45Njk3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class RoundAltArrowUpOutlineIcon extends StatelessWidget {
  /// Creates the `round-alt-arrow-up` icon in the outline style.
  const RoundAltArrowUpOutlineIcon({
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
    name: 'round-alt-arrow-up',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 6.89137 17.1086 2.75 12 2.75ZM1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C17.9371 1.25 22.75 6.06294 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12ZM8.46967 12.9697L11.4697 9.96967C11.7626 9.67678 12.2374 9.67678 12.5303 9.96967L15.5303 12.9697C15.8232 13.2626 15.8232 13.7374 15.5303 14.0303C15.2374 14.3232 14.7626 14.3232 14.4697 14.0303L12 11.5607L9.53033 14.0303C9.23744 14.3232 8.76256 14.3232 8.46967 14.0303C8.17678 13.7374 8.17678 13.2626 8.46967 12.9697Z" fill="currentColor"/>''',
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
