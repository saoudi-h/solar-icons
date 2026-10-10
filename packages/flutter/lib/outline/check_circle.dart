// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNi4wMzAzIDEwLjAzMDNDMTYuMzIzMiA5LjczNzQ0IDE2LjMyMzIgOS4yNjI1NiAxNi4wMzAzIDguOTY5NjdDMTUuNzM3NCA4LjY3Njc4IDE1LjI2MjYgOC42NzY3OCAxNC45Njk3IDguOTY5NjdMMTAuNSAxMy40MzkzTDkuMDMwMzMgMTEuOTY5N0M4LjczNzQ0IDExLjY3NjggOC4yNjI1NiAxMS42NzY4IDcuOTY5NjcgMTEuOTY5N0M3LjY3Njc4IDEyLjI2MjYgNy42NzY3OCAxMi43Mzc0IDcuOTY5NjcgMTMuMDMwM0w5Ljk2OTY3IDE1LjAzMDNDMTAuMjYyNiAxNS4zMjMyIDEwLjczNzQgMTUuMzIzMiAxMS4wMzAzIDE1LjAzMDNMMTYuMDMwMyAxMC4wMzAzWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDEuMjVDNi4wNjI5NCAxLjI1IDEuMjUgNi4wNjI5NCAxLjI1IDEyQzEuMjUgMTcuOTM3MSA2LjA2Mjk0IDIyLjc1IDEyIDIyLjc1QzE3LjkzNzEgMjIuNzUgMjIuNzUgMTcuOTM3MSAyMi43NSAxMkMyMi43NSA2LjA2Mjk0IDE3LjkzNzEgMS4yNSAxMiAxLjI1Wk0yLjc1IDEyQzIuNzUgNi44OTEzNyA2Ljg5MTM3IDIuNzUgMTIgMi43NUMxNy4xMDg2IDIuNzUgMjEuMjUgNi44OTEzNyAyMS4yNSAxMkMyMS4yNSAxNy4xMDg2IDE3LjEwODYgMjEuMjUgMTIgMjEuMjVDNi44OTEzNyAyMS4yNSAyLjc1IDE3LjEwODYgMi43NSAxMloiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class CheckCircleOutlineIcon extends StatelessWidget {
  /// Creates the `check-circle` icon in the outline style.
  const CheckCircleOutlineIcon({
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
    name: 'check-circle',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M16.0303 10.0303C16.3232 9.73744 16.3232 9.26256 16.0303 8.96967C15.7374 8.67678 15.2626 8.67678 14.9697 8.96967L10.5 13.4393L9.03033 11.9697C8.73744 11.6768 8.26256 11.6768 7.96967 11.9697C7.67678 12.2626 7.67678 12.7374 7.96967 13.0303L9.96967 15.0303C10.2626 15.3232 10.7374 15.3232 11.0303 15.0303L16.0303 10.0303Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C6.06294 1.25 1.25 6.06294 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 6.06294 17.9371 1.25 12 1.25ZM2.75 12C2.75 6.89137 6.89137 2.75 12 2.75C17.1086 2.75 21.25 6.89137 21.25 12C21.25 17.1086 17.1086 21.25 12 21.25C6.89137 21.25 2.75 17.1086 2.75 12Z" fill="currentColor"/>''',
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
