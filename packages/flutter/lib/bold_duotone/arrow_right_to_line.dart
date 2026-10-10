// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yLjI1IDIwQzIuMjUgMjAuNDE0MiAyLjU4NTc5IDIwLjc1IDMgMjAuNzVDMy40MTQyMSAyMC43NSAzLjc1IDIwLjQxNDIgMy43NSAyMEwzLjc1IDRDMy43NSAzLjU4NTc5IDMuNDE0MjEgMy4yNSAzIDMuMjVDMi41ODU3OSAzLjI1IDIuMjUgMy41ODU3OSAyLjI1IDRMMi4yNSAyMFoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjEgMTIuNzUwMUw5LjkzMTY0IDEyLjc1MDFMMTIuODgwOSAxNS40NDY0QzEzLjE4NjUgMTUuNzI1OCAxMy4yMDggMTYuMjAwMiAxMi45Mjg3IDE2LjUwNkMxMi42NDkzIDE2LjgxMTYgMTIuMTc0OCAxNi44MzMxIDExLjg2OTEgMTYuNTUzOEw3LjQ5NDE0IDEyLjU1MzhDNy4zMzg3NCAxMi40MTE3IDcuMjUgMTIuMjEwNyA3LjI1IDEyLjAwMDFDNy4yNSAxMS43ODk1IDcuMzM4NzQgMTEuNTg4NSA3LjQ5NDE0IDExLjQ0NjRMMTEuODY5MSA3LjQ0NjM5QzEyLjE3NDkgNy4xNjcwOSAxMi42NDkzIDcuMTg4NjEgMTIuOTI4NyA3LjQ5NDI0QzEzLjIwOCA3Ljc5OTk1IDEzLjE4NjUgOC4yNzQzNyAxMi44ODA5IDguNTUzODFMOS45MzE2NCAxMS4yNTAxTDIxIDExLjI1MDFDMjEuNDE0MiAxMS4yNTAxIDIxLjc1IDExLjU4NTkgMjEuNzUgMTIuMDAwMUMyMS43NSAxMi40MTQzIDIxLjQxNDIgMTIuNzUwMSAyMSAxMi43NTAxWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowRightToLineBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-right-to-line` icon in the boldDuotone style.
  const ArrowRightToLineBoldDuotoneIcon({
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
    name: 'arrow-right-to-line',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M2.25 20C2.25 20.4142 2.58579 20.75 3 20.75C3.41421 20.75 3.75 20.4142 3.75 20L3.75 4C3.75 3.58579 3.41421 3.25 3 3.25C2.58579 3.25 2.25 3.58579 2.25 4L2.25 20Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M21 12.7501L9.93164 12.7501L12.8809 15.4464C13.1865 15.7258 13.208 16.2002 12.9287 16.506C12.6493 16.8116 12.1748 16.8331 11.8691 16.5538L7.49414 12.5538C7.33874 12.4117 7.25 12.2107 7.25 12.0001C7.25 11.7895 7.33874 11.5885 7.49414 11.4464L11.8691 7.44639C12.1749 7.16709 12.6493 7.18861 12.9287 7.49424C13.208 7.79995 13.1865 8.27437 12.8809 8.55381L9.93164 11.2501L21 11.2501C21.4142 11.2501 21.75 11.5859 21.75 12.0001C21.75 12.4143 21.4142 12.7501 21 12.7501Z" fill="currentColor"/>''',
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
