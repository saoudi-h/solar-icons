// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMCAxMy43NUMyMS4xMDQ2IDEzLjc1IDIyIDE0LjY0NTQgMjIgMTUuNzVDMjIgMTYuNTg5MyAyMS40ODI5IDE3LjMwNzggMjAuNzUgMTcuNjA0NVYxOS43NUMyMC43NSAyMC4xNjQyIDIwLjQxNDIgMjAuNSAyMCAyMC41QzE5LjU4NTggMjAuNSAxOS4yNSAyMC4xNjQyIDE5LjI1IDE5Ljc1VjE3Ljc1SDQuNzVWMTkuNzVDNC43NSAyMC4xNjQyIDQuNDE0MjEgMjAuNSA0IDIwLjVDMy41ODU3OSAyMC41IDMuMjUgMjAuMTY0MiAzLjI1IDE5Ljc1VjE3LjYwNDVDMi41MTcwNyAxNy4zMDc4IDIgMTYuNTg5MyAyIDE1Ljc1QzIgMTQuNjQ1NCAyLjg5NTQzIDEzLjc1IDQgMTMuNzVIMjBaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xMiAzLjc1QzE2LjQ4MSAzLjc1IDE4LjcyMTMgMy43NTAyMyAxOS45MTg5IDUuMTUzMzJDMTkuOTk0NCA1LjI0MTcgMjAuMDY2MyA1LjMzMzEyIDIwLjEzMzggNS40Mjc3M0MyMS4xNDU0IDYuODQ2ODggMjAuNzE2OSA4Ljg2NTgzIDE5Ljc1IDEyLjc1SDQuMjVDMy4yODMxMyA4Ljg2NTggMi44NTQ2MiA2Ljg0Njg4IDMuODY2MjEgNS40Mjc3M0MzLjkzMzY1IDUuMzMzMTUgNC4wMDU2NCA1LjI0MTY4IDQuMDgxMDUgNS4xNTMzMkM1LjI3ODc0IDMuNzUwMjkgNy41MTkwMyAzLjc1IDEyIDMuNzVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class Sofa3BoldIcon extends StatelessWidget {
  /// Creates the `sofa-3` icon in the bold style.
  const Sofa3BoldIcon({
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
    name: 'sofa-3',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M20 13.75C21.1046 13.75 22 14.6454 22 15.75C22 16.5893 21.4829 17.3078 20.75 17.6045V19.75C20.75 20.1642 20.4142 20.5 20 20.5C19.5858 20.5 19.25 20.1642 19.25 19.75V17.75H4.75V19.75C4.75 20.1642 4.41421 20.5 4 20.5C3.58579 20.5 3.25 20.1642 3.25 19.75V17.6045C2.51707 17.3078 2 16.5893 2 15.75C2 14.6454 2.89543 13.75 4 13.75H20Z" fill="currentColor"/>
<path d="M12 3.75C16.481 3.75 18.7213 3.75023 19.9189 5.15332C19.9944 5.2417 20.0663 5.33312 20.1338 5.42773C21.1454 6.84688 20.7169 8.86583 19.75 12.75H4.25C3.28313 8.8658 2.85462 6.84688 3.86621 5.42773C3.93365 5.33315 4.00564 5.24168 4.08105 5.15332C5.27874 3.75029 7.51903 3.75 12 3.75Z" fill="currentColor"/>''',
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
