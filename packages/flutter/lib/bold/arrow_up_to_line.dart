// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-up-to-line` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQgMy43NUMzLjU4NTc5IDMuNzUgMy4yNSAzLjQxNDIxIDMuMjUgM0MzLjI1IDIuNTg1NzkgMy41ODU3OSAyLjI1IDQgMi4yNUwyMCAyLjI1QzIwLjQxNDIgMi4yNSAyMC43NSAyLjU4NTc5IDIwLjc1IDNDMjAuNzUgMy40MTQyMSAyMC40MTQyIDMuNzUgMjAgMy43NUw0IDMuNzVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMiAyMS43NUMxMS41ODU4IDIxLjc1IDExLjI1IDIxLjQxNDIgMTEuMjUgMjFMMTEuMjUgOS45MzE2NEw4LjU1MzcxIDEyLjg4MDlDOC4yNzQyOSAxMy4xODY1IDcuNzk5ODUgMTMuMjA4IDcuNDk0MTQgMTIuOTI4N0M3LjE4ODUxIDEyLjY0OTMgNy4xNjcgMTIuMTc0OCA3LjQ0NjI5IDExLjg2OTFMMTEuNDQ2MyA3LjQ5NDE0QzExLjU4ODQgNy4zMzg3NyAxMS43ODk1IDcuMjUgMTIgNy4yNUMxMi4yMTA1IDcuMjUwMDMgMTIuNDExNiA3LjMzODc2IDEyLjU1MzcgNy40OTQxNEwxNi41NTM3IDExLjg2OTFDMTYuODMyOSAxMi4xNzQ4IDE2LjgxMTQgMTIuNjQ5MyAxNi41MDU5IDEyLjkyODdDMTYuMjAwMiAxMy4yMDggMTUuNzI1NyAxMy4xODY0IDE1LjQ0NjMgMTIuODgwOUwxMi43NSA5LjkzMTY0TDEyLjc1IDIxQzEyLjc1IDIxLjQxNDIgMTIuNDE0MiAyMS43NDk5IDEyIDIxLjc1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowUpToLineBoldIcon extends StatelessWidget {
  /// Creates the `arrow-up-to-line` icon in the bold style.
  const ArrowUpToLineBoldIcon({
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
    name: 'arrow-up-to-line',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M4 3.75C3.58579 3.75 3.25 3.41421 3.25 3C3.25 2.58579 3.58579 2.25 4 2.25L20 2.25C20.4142 2.25 20.75 2.58579 20.75 3C20.75 3.41421 20.4142 3.75 20 3.75L4 3.75Z" fill="currentColor"/>
<path d="M12 21.75C11.5858 21.75 11.25 21.4142 11.25 21L11.25 9.93164L8.55371 12.8809C8.27429 13.1865 7.79985 13.208 7.49414 12.9287C7.18851 12.6493 7.167 12.1748 7.44629 11.8691L11.4463 7.49414C11.5884 7.33877 11.7895 7.25 12 7.25C12.2105 7.25003 12.4116 7.33876 12.5537 7.49414L16.5537 11.8691C16.8329 12.1748 16.8114 12.6493 16.5059 12.9287C16.2002 13.208 15.7257 13.1864 15.4463 12.8809L12.75 9.93164L12.75 21C12.75 21.4142 12.4142 21.7499 12 21.75Z" fill="currentColor"/>''',
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
