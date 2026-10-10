// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-right-to-line` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIuMjUgMjBDMi4yNSAyMC40MTQyIDIuNTg1NzkgMjAuNzUgMyAyMC43NUMzLjQxNDIxIDIwLjc1IDMuNzUgMjAuNDE0MiAzLjc1IDIwTDMuNzUgNEMzLjc1IDMuNTg1NzkgMy40MTQyMSAzLjI1IDMgMy4yNUMyLjU4NTc5IDMuMjUgMi4yNSAzLjU4NTc5IDIuMjUgNEwyLjI1IDIwWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik0yMSAxMi43NTAxTDkuOTMxNjQgMTIuNzUwMUwxMi44ODA5IDE1LjQ0NjRDMTMuMTg2NSAxNS43MjU4IDEzLjIwOCAxNi4yMDAyIDEyLjkyODcgMTYuNTA2QzEyLjY0OTMgMTYuODExNiAxMi4xNzQ4IDE2LjgzMzEgMTEuODY5MSAxNi41NTM4TDcuNDk0MTQgMTIuNTUzOEM3LjMzODc0IDEyLjQxMTcgNy4yNSAxMi4yMTA3IDcuMjUgMTIuMDAwMUM3LjI1IDExLjc4OTUgNy4zMzg3NCAxMS41ODg1IDcuNDk0MTQgMTEuNDQ2NEwxMS44NjkxIDcuNDQ2MzlDMTIuMTc0OSA3LjE2NzA5IDEyLjY0OTMgNy4xODg2MSAxMi45Mjg3IDcuNDk0MjRDMTMuMjA4IDcuNzk5OTUgMTMuMTg2NSA4LjI3NDM3IDEyLjg4MDkgOC41NTM4MUw5LjkzMTY0IDExLjI1MDFMMjEgMTEuMjUwMUMyMS40MTQyIDExLjI1MDEgMjEuNzUgMTEuNTg1OSAyMS43NSAxMi4wMDAxQzIxLjc1IDEyLjQxNDMgMjEuNDE0MiAxMi43NTAxIDIxIDEyLjc1MDFaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
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
