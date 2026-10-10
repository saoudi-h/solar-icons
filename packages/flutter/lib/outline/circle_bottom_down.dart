// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik05LjQ2OTczIDEzLjQ2OTdDOS43NjI2MiAxMy4xNzY4IDEwLjIzNzQgMTMuMTc2OCAxMC41MzAzIDEzLjQ2OTdDMTAuODIzMiAxMy43NjI2IDEwLjgyMzIgMTQuMjM3NCAxMC41MzAzIDE0LjUzMDNMMy44MTA1NSAyMS4yNUg4QzguNDE0MjEgMjEuMjUgOC43NSAyMS41ODU4IDguNzUgMjJDOC43NSAyMi40MTQyIDguNDE0MjEgMjIuNzUgOCAyMi43NUgyQzEuNTg1NzkgMjIuNzUgMS4yNSAyMi40MTQyIDEuMjUgMjJWMTZDMS4yNSAxNS41ODU4IDEuNTg1NzkgMTUuMjUgMiAxNS4yNUMyLjQxNDIxIDE1LjI1IDIuNzUgMTUuNTg1OCAyLjc1IDE2VjIwLjE4OTVMOS40Njk3MyAxMy40Njk3Wk0xMiAxLjI1QzE3LjkzNzEgMS4yNSAyMi43NSA2LjA2Mjk0IDIyLjc1IDEyQzIyLjc1IDE3LjkzNzEgMTcuOTM3MSAyMi43NSAxMiAyMi43NUMxMS41ODU4IDIyLjc1IDExLjI1IDIyLjQxNDIgMTEuMjUgMjJDMTEuMjUgMjEuNTg1OCAxMS41ODU4IDIxLjI1IDEyIDIxLjI1QzE3LjEwODYgMjEuMjUgMjEuMjUgMTcuMTA4NiAyMS4yNSAxMkMyMS4yNSA2Ljg5MTM3IDE3LjEwODYgMi43NSAxMiAyLjc1QzYuODkxMzcgMi43NSAyLjc1IDYuODkxMzcgMi43NSAxMkMyLjc1IDEyLjQxNDIgMi40MTQyMSAxMi43NSAyIDEyLjc1QzEuNTg1NzkgMTIuNzUgMS4yNSAxMi40MTQyIDEuMjUgMTJDMS4yNSA2LjA2Mjk0IDYuMDYyOTQgMS4yNSAxMiAxLjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
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
