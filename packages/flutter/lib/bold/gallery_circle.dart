// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `gallery-circle` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3IDlDMTcgMTAuMTA0NiAxNi4xMDQ2IDExIDE1IDExQzEzLjg5NTQgMTEgMTMgMTAuMTA0NiAxMyA5QzEzIDcuODk1NDMgMTMuODk1NCA3IDE1IDdDMTYuMTA0NiA3IDE3IDcuODk1NDMgMTcgOVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAxLjI1QzYuMDYyOTQgMS4yNSAxLjI1IDYuMDYyOTQgMS4yNSAxMkMxLjI1IDE3LjkzNzEgNi4wNjI5NCAyMi43NSAxMiAyMi43NUMxNy45MzcxIDIyLjc1IDIyLjc1IDE3LjkzNzEgMjIuNzUgMTJDMjIuNzUgNi4wNjI5NCAxNy45MzcxIDEuMjUgMTIgMS4yNVpNMTEuMTgyMiAxNS4zNjE4TDYuODkyNDkgMTEuMDcyMUM2LjAzNjI4IDEwLjIxNTkgNC42NjI4NiAxMC4xNzAyIDMuNzUxNTkgMTAuOTY3NUwyLjc1MSAxMS44NjIzQzIuODI0NjQgNi44MTcxNCA2LjkzNzM1IDIuNzUgMTIgMi43NUMxNy4xMDg2IDIuNzUgMjEuMjUgNi44OTEzNyAyMS4yNSAxMkMyMS4yNSAxMy45NTQ2IDIwLjY0MzggMTUuNzY3NiAxOS42MDkgMTcuMjYxMkwxNy43NzY1IDE1LjU5OUMxNi43MzY5IDE0LjY2MzQgMTUuMTg4OCAxNC41NzAyIDE0LjA0NDYgMTUuMzc0NEwxMy43NDY0IDE1LjU4MzlDMTIuOTUxMiAxNi4xNDI4IDExLjg2OTQgMTYuMDQ5MSAxMS4xODIyIDE1LjM2MThaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class GalleryCircleBoldIcon extends StatelessWidget {
  /// Creates the `gallery-circle` icon in the bold style.
  const GalleryCircleBoldIcon({
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
    name: 'gallery-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17 9C17 10.1046 16.1046 11 15 11C13.8954 11 13 10.1046 13 9C13 7.89543 13.8954 7 15 7C16.1046 7 17 7.89543 17 9Z" fill="currentColor"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12 1.25C6.06294 1.25 1.25 6.06294 1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 6.06294 17.9371 1.25 12 1.25ZM11.1822 15.3618L6.89249 11.0721C6.03628 10.2159 4.66286 10.1702 3.75159 10.9675L2.751 11.8623C2.82464 6.81714 6.93735 2.75 12 2.75C17.1086 2.75 21.25 6.89137 21.25 12C21.25 13.9546 20.6438 15.7676 19.609 17.2612L17.7765 15.599C16.7369 14.6634 15.1888 14.5702 14.0446 15.3744L13.7464 15.5839C12.9512 16.1428 11.8694 16.0491 11.1822 15.3618Z" fill="currentColor"/>''',
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
