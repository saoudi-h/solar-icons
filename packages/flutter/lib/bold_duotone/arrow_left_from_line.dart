// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMC4yNSAyMEMyMC4yNSAyMC40MTQyIDIwLjU4NTggMjAuNzUgMjEgMjAuNzVDMjEuNDE0MiAyMC43NSAyMS43NSAyMC40MTQyIDIxLjc1IDIwTDIxLjc1IDRDMjEuNzUgMy41ODU3OSAyMS40MTQyIDMuMjUgMjEgMy4yNUMyMC41ODU4IDMuMjUgMjAuMjUgMy41ODU3OSAyMC4yNSA0TDIwLjI1IDIwWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0xNiAxMi43NTAxTDQuOTMxNjQgMTIuNzUwMUw3Ljg4MDg2IDE1LjQ0NjRDOC4xODY0OSAxNS43MjU4IDguMjA4MDEgMTYuMjAwMiA3LjkyODcxIDE2LjUwNkM3LjY0OTI4IDE2LjgxMTYgNy4xNzQ4NSAxNi44MzMxIDYuODY5MTQgMTYuNTUzOEwyLjQ5NDE0IDEyLjU1MzhDMi4zMzg3NCAxMi40MTE3IDIuMjUgMTIuMjEwNyAyLjI1IDEyLjAwMDFDMi4yNSAxMS43ODk1IDIuMzM4NzQgMTEuNTg4NSAyLjQ5NDE0IDExLjQ0NjRMNi44NjkxNCA3LjQ0NjM5QzcuMTc0ODUgNy4xNjcwOSA3LjY0OTI4IDcuMTg4NjEgNy45Mjg3MSA3LjQ5NDI0QzguMjA4MDEgNy43OTk5NSA4LjE4NjQ5IDguMjc0MzcgNy44ODA4NiA4LjU1MzgxTDQuOTMxNjQgMTEuMjUwMUwxNiAxMS4yNTAxQzE2LjQxNDIgMTEuMjUwMSAxNi43NSAxMS41ODU5IDE2Ljc1IDEyLjAwMDFDMTYuNzUgMTIuNDE0MyAxNi40MTQyIDEyLjc1MDEgMTYgMTIuNzUwMVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowLeftFromLineBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `arrow-left-from-line` icon in the boldDuotone style.
  const ArrowLeftFromLineBoldDuotoneIcon({
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
    name: 'arrow-left-from-line',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M20.25 20C20.25 20.4142 20.5858 20.75 21 20.75C21.4142 20.75 21.75 20.4142 21.75 20L21.75 4C21.75 3.58579 21.4142 3.25 21 3.25C20.5858 3.25 20.25 3.58579 20.25 4L20.25 20Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M16 12.7501L4.93164 12.7501L7.88086 15.4464C8.18649 15.7258 8.20801 16.2002 7.92871 16.506C7.64928 16.8116 7.17485 16.8331 6.86914 16.5538L2.49414 12.5538C2.33874 12.4117 2.25 12.2107 2.25 12.0001C2.25 11.7895 2.33874 11.5885 2.49414 11.4464L6.86914 7.44639C7.17485 7.16709 7.64928 7.18861 7.92871 7.49424C8.20801 7.79995 8.18649 8.27437 7.88086 8.55381L4.93164 11.2501L16 11.2501C16.4142 11.2501 16.75 11.5859 16.75 12.0001C16.75 12.4143 16.4142 12.7501 16 12.7501Z" fill="currentColor"/>''',
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
