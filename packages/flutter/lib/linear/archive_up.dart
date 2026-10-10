// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAyMUwxMiAxMk05IDE1LjMzMzNMMTIgMTJMMTUgMTUuMzMzMyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMC41IDdWMTNDMjAuNSAxNi43NzEyIDIwLjUgMTguNjU2OSAxOS4zMjg0IDE5LjgyODRDMTguMTU2OSAyMSAxNi4yNzEyIDIxIDEyLjUgMjFIMTEuNUM3LjcyODc2IDIxIDUuODQzMTUgMjEgNC42NzE1NyAxOS44Mjg0QzMuNSAxOC42NTY5IDMuNSAxNi43NzEyIDMuNSAxM1Y3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIgNUMyIDQuMDU3MTkgMiAzLjU4NTc5IDIuMjkyODkgMy4yOTI4OUMyLjU4NTc5IDMgMy4wNTcxOSAzIDQgM0gyMEMyMC45NDI4IDMgMjEuNDE0MiAzIDIxLjcwNzEgMy4yOTI4OUMyMiAzLjU4NTc5IDIyIDQuMDU3MTkgMjIgNUMyMiA1Ljk0MjgxIDIyIDYuNDE0MjEgMjEuNzA3MSA2LjcwNzExQzIxLjQxNDIgNyAyMC45NDI4IDcgMjAgN0g0QzMuMDU3MTkgNyAyLjU4NTc5IDcgMi4yOTI4OSA2LjcwNzExQzIgNi40MTQyMSAyIDUuOTQyODEgMiA1WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class ArchiveUpLinearIcon extends StatelessWidget {
  /// Creates the `archive-up` icon in the linear style.
  const ArchiveUpLinearIcon({
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
    name: 'archive-up',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12 21L12 12M9 15.3333L12 12L15 15.3333" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.5 7V13C20.5 16.7712 20.5 18.6569 19.3284 19.8284C18.1569 21 16.2712 21 12.5 21H11.5C7.72876 21 5.84315 21 4.67157 19.8284C3.5 18.6569 3.5 16.7712 3.5 13V7" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 5C2 4.05719 2 3.58579 2.29289 3.29289C2.58579 3 3.05719 3 4 3H20C20.9428 3 21.4142 3 21.7071 3.29289C22 3.58579 22 4.05719 22 5C22 5.94281 22 6.41421 21.7071 6.70711C21.4142 7 20.9428 7 20 7H4C3.05719 7 2.58579 7 2.29289 6.70711C2 6.41421 2 5.94281 2 5Z" stroke="currentColor" stroke-linecap="round"/>''',
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
