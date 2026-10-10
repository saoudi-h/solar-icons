// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00IDIwLjI1QzMuNTg1NzkgMjAuMjUgMy4yNSAyMC41ODU4IDMuMjUgMjFDMy4yNSAyMS40MTQyIDMuNTg1NzkgMjEuNzUgNCAyMS43NUwyMCAyMS43NUMyMC40MTQyIDIxLjc1IDIwLjc1IDIxLjQxNDIgMjAuNzUgMjFDMjAuNzUgMjAuNTg1OCAyMC40MTQyIDIwLjI1IDIwIDIwLjI1TDQgMjAuMjVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTExLjI0OTkgMTZMMTEuMjQ5OSA0LjkzMTY0TDguNTUzNjEgNy44ODA4NkM4LjI3NDE4IDguMTg2NDkgNy43OTk3NSA4LjIwODAxIDcuNDk0MDQgNy45Mjg3MUM3LjE4ODQxIDcuNjQ5MjggNy4xNjY5IDcuMTc0ODUgNy40NDYxOSA2Ljg2OTE0TDExLjQ0NjIgMi40OTQxNEMxMS41ODgzIDIuMzM4NzQgMTEuNzg5MyAyLjI1IDExLjk5OTkgMi4yNUMxMi4yMTA1IDIuMjUgMTIuNDExNSAyLjMzODc0IDEyLjU1MzYgMi40OTQxNEwxNi41NTM2IDYuODY5MTRDMTYuODMyOSA3LjE3NDg1IDE2LjgxMTQgNy42NDkyOCAxNi41MDU4IDcuOTI4NzFDMTYuMjAwMSA4LjIwODAxIDE1LjcyNTYgOC4xODY0OSAxNS40NDYyIDcuODgwODZMMTIuNzQ5OSA0LjkzMTY0TDEyLjc0OTkgMTZDMTIuNzQ5OSAxNi40MTQyIDEyLjQxNDEgMTYuNzUgMTEuOTk5OSAxNi43NUMxMS41ODU3IDE2Ljc1IDExLjI0OTkgMTYuNDE0MiAxMS4yNDk5IDE2WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowUpFromLineBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-up-from-line` icon in the boldDuotone style.
  const ArrowUpFromLineBoldDuotoneIcon({
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
    name: 'arrow-up-from-line',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M4 20.25C3.58579 20.25 3.25 20.5858 3.25 21C3.25 21.4142 3.58579 21.75 4 21.75L20 21.75C20.4142 21.75 20.75 21.4142 20.75 21C20.75 20.5858 20.4142 20.25 20 20.25L4 20.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.2499 16L11.2499 4.93164L8.55361 7.88086C8.27418 8.18649 7.79975 8.20801 7.49404 7.92871C7.18841 7.64928 7.1669 7.17485 7.44619 6.86914L11.4462 2.49414C11.5883 2.33874 11.7893 2.25 11.9999 2.25C12.2105 2.25 12.4115 2.33874 12.5536 2.49414L16.5536 6.86914C16.8329 7.17485 16.8114 7.64928 16.5058 7.92871C16.2001 8.20801 15.7256 8.18649 15.4462 7.88086L12.7499 4.93164L12.7499 16C12.7499 16.4142 12.4141 16.75 11.9999 16.75C11.5857 16.75 11.2499 16.4142 11.2499 16Z" fill="currentColor"/>''',
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
