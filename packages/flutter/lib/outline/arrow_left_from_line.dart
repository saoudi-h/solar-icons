// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNi43NSAxMkMxNi43NSAxMi40MTQyIDE2LjQxNDIgMTIuNzUgMTYgMTIuNzVMNC45MzE2NCAxMi43NUw3Ljg4MDg2IDE1LjQ0NjNDOC4xODY0OSAxNS43MjU3IDguMjA4IDE2LjIwMDEgNy45Mjg3MSAxNi41MDU5QzcuNjQ5MjggMTYuODExNSA3LjE3NDg1IDE2LjgzMyA2Ljg2OTE0IDE2LjU1MzdMMi40OTQxNCAxMi41NTM3QzIuMzM4NzQgMTIuNDExNiAyLjI1IDEyLjIxMDYgMi4yNSAxMkMyLjI1IDExLjc4OTQgMi4zMzg3NCAxMS41ODg0IDIuNDk0MTQgMTEuNDQ2M0w2Ljg2OTE0IDcuNDQ2MjlDNy4xNzQ4NSA3LjE2Njk5IDcuNjQ5MjggNy4xODg1MSA3LjkyODcxIDcuNDk0MTRDOC4yMDggNy43OTk4NSA4LjE4NjQ5IDguMjc0MjggNy44ODA4NiA4LjU1MzcxTDQuOTMxNjQgMTEuMjVMMTYgMTEuMjVDMTYuNDE0MiAxMS4yNSAxNi43NSAxMS41ODU4IDE2Ljc1IDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMjEuNzUgMjBDMjEuNzUgMjAuNDE0MiAyMS40MTQyIDIwLjc1IDIxIDIwLjc1QzIwLjU4NTggMjAuNzUgMjAuMjUgMjAuNDE0MiAyMC4yNSAyMEwyMC4yNSA0QzIwLjI1IDMuNTg1NzkgMjAuNTg1OCAzLjI1IDIxIDMuMjVDMjEuNDE0MiAzLjI1IDIxLjc1IDMuNTg1NzkgMjEuNzUgNEwyMS43NSAyMFoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowLeftFromLineOutlineIcon extends StatelessWidget {
  /// Creates the `arrow-left-from-line` icon in the outline style.
  const ArrowLeftFromLineOutlineIcon({
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
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M16.75 12C16.75 12.4142 16.4142 12.75 16 12.75L4.93164 12.75L7.88086 15.4463C8.18649 15.7257 8.208 16.2001 7.92871 16.5059C7.64928 16.8115 7.17485 16.833 6.86914 16.5537L2.49414 12.5537C2.33874 12.4116 2.25 12.2106 2.25 12C2.25 11.7894 2.33874 11.5884 2.49414 11.4463L6.86914 7.44629C7.17485 7.16699 7.64928 7.18851 7.92871 7.49414C8.208 7.79985 8.18649 8.27428 7.88086 8.55371L4.93164 11.25L16 11.25C16.4142 11.25 16.75 11.5858 16.75 12Z" fill="currentColor"/>
<path d="M21.75 20C21.75 20.4142 21.4142 20.75 21 20.75C20.5858 20.75 20.25 20.4142 20.25 20L20.25 4C20.25 3.58579 20.5858 3.25 21 3.25C21.4142 3.25 21.75 3.58579 21.75 4L21.75 20Z" fill="currentColor"/>''',
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
