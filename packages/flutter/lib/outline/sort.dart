// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNiAxNi4yNUMxNi40MTQyIDE2LjI1IDE2Ljc1IDE2LjU4NTggMTYuNzUgMTdDMTYuNzUgMTcuNDE0MiAxNi40MTQyIDE3Ljc1IDE2IDE3Ljc1SDhDNy41ODU3OSAxNy43NSA3LjI1IDE3LjQxNDIgNy4yNSAxN0M3LjI1IDE2LjU4NTggNy41ODU3OSAxNi4yNSA4IDE2LjI1SDE2WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTkgMTEuMjVDMTkuNDE0MiAxMS4yNSAxOS43NSAxMS41ODU4IDE5Ljc1IDEyQzE5Ljc1IDEyLjQxNDIgMTkuNDE0MiAxMi43NSAxOSAxMi43NUg1QzQuNTg1NzkgMTIuNzUgNC4yNSAxMi40MTQyIDQuMjUgMTJDNC4yNSAxMS41ODU4IDQuNTg1NzkgMTEuMjUgNSAxMS4yNUgxOVoiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggZD0iTTIyIDYuMjVDMjIuNDE0MiA2LjI1IDIyLjc1IDYuNTg1NzkgMjIuNzUgN0MyMi43NSA3LjQxNDIxIDIyLjQxNDIgNy43NSAyMiA3Ljc1SDJDMS41ODU3OSA3Ljc1IDEuMjUgNy40MTQyMSAxLjI1IDdDMS4yNSA2LjU4NTc5IDEuNTg1NzkgNi4yNSAyIDYuMjVIMjJaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class SortOutlineIcon extends StatelessWidget {
  /// Creates the `sort` icon in the outline style.
  const SortOutlineIcon({
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
    name: 'sort',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M16 16.25C16.4142 16.25 16.75 16.5858 16.75 17C16.75 17.4142 16.4142 17.75 16 17.75H8C7.58579 17.75 7.25 17.4142 7.25 17C7.25 16.5858 7.58579 16.25 8 16.25H16Z" fill="currentColor"/>
<path d="M19 11.25C19.4142 11.25 19.75 11.5858 19.75 12C19.75 12.4142 19.4142 12.75 19 12.75H5C4.58579 12.75 4.25 12.4142 4.25 12C4.25 11.5858 4.58579 11.25 5 11.25H19Z" fill="currentColor"/>
<path d="M22 6.25C22.4142 6.25 22.75 6.58579 22.75 7C22.75 7.41421 22.4142 7.75 22 7.75H2C1.58579 7.75 1.25 7.41421 1.25 7C1.25 6.58579 1.58579 6.25 2 6.25H22Z" fill="currentColor"/>''',
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
