// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAxNi43NUMxMS41ODU4IDE2Ljc1IDExLjI1IDE2LjQxNDIgMTEuMjUgMTZMMTEuMjUgNC45MzE2NEw4LjU1MzcxIDcuODgwODZDOC4yNzQyOCA4LjE4NjQ5IDcuNzk5ODUgOC4yMDgwMSA3LjQ5NDE0IDcuOTI4NzFDNy4xODg1MSA3LjY0OTI4IDcuMTY2OTkgNy4xNzQ4NSA3LjQ0NjI5IDYuODY5MTRMMTEuNDQ2MyAyLjQ5NDE0QzExLjU4ODQgMi4zMzg3NCAxMS43ODk0IDIuMjUgMTIgMi4yNUMxMi4yMTA2IDIuMjUgMTIuNDExNiAyLjMzODc0IDEyLjU1MzcgMi40OTQxNEwxNi41NTM3IDYuODY5MTRDMTYuODMzIDcuMTc0ODUgMTYuODExNSA3LjY0OTI4IDE2LjUwNTkgNy45Mjg3MUMxNi4yMDAxIDguMjA4MDEgMTUuNzI1NyA4LjE4NjQ5IDE1LjQ0NjMgNy44ODA4NkwxMi43NSA0LjkzMTY0TDEyLjc1IDE2QzEyLjc1IDE2LjQxNDIgMTIuNDE0MiAxNi43NSAxMiAxNi43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTQgMjEuNzVDMy41ODU3OSAyMS43NSAzLjI1IDIxLjQxNDIgMy4yNSAyMUMzLjI1IDIwLjU4NTggMy41ODU3OSAyMC4yNSA0IDIwLjI1TDIwIDIwLjI1QzIwLjQxNDIgMjAuMjUgMjAuNzUgMjAuNTg1OCAyMC43NSAyMUMyMC43NSAyMS40MTQyIDIwLjQxNDIgMjEuNzUgMjAgMjEuNzVMNCAyMS43NVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowUpFromLineBoldIcon extends StatelessWidget {
  /// Creates the `arrow-up-from-line` icon in the bold style.
  const ArrowUpFromLineBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12 16.75C11.5858 16.75 11.25 16.4142 11.25 16L11.25 4.93164L8.55371 7.88086C8.27428 8.18649 7.79985 8.20801 7.49414 7.92871C7.18851 7.64928 7.16699 7.17485 7.44629 6.86914L11.4463 2.49414C11.5884 2.33874 11.7894 2.25 12 2.25C12.2106 2.25 12.4116 2.33874 12.5537 2.49414L16.5537 6.86914C16.833 7.17485 16.8115 7.64928 16.5059 7.92871C16.2001 8.20801 15.7257 8.18649 15.4463 7.88086L12.75 4.93164L12.75 16C12.75 16.4142 12.4142 16.75 12 16.75Z" fill="currentColor"/>
<path d="M4 21.75C3.58579 21.75 3.25 21.4142 3.25 21C3.25 20.5858 3.58579 20.25 4 20.25L20 20.25C20.4142 20.25 20.75 20.5858 20.75 21C20.75 21.4142 20.4142 21.75 20 21.75L4 21.75Z" fill="currentColor"/>''',
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
