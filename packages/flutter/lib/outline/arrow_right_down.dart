// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNS40Njk2NyA1LjQ2OTY3QzUuNzYyNTYgNS4xNzY3OCA2LjIzNzQ0IDUuMTc2NzggNi41MzAzMyA1LjQ2OTY3TDE3LjI1IDE2LjE4OTNMMTcuMjUgOUMxNy4yNSA4LjU4NTc5IDE3LjU4NTggOC4yNSAxOCA4LjI1QzE4LjQxNDIgOC4yNSAxOC43NSA4LjU4NTc5IDE4Ljc1IDlMMTguNzUgMThDMTguNzUgMTguNDE0MiAxOC40MTQyIDE4Ljc1IDE4IDE4Ljc1TDkgMTguNzVDOC41ODU3OSAxOC43NSA4LjI1IDE4LjQxNDIgOC4yNSAxOEM4LjI1IDE3LjU4NTggOC41ODU3OSAxNy4yNSA5IDE3LjI1TDE2LjE4OTMgMTcuMjVMNS40Njk2NyA2LjUzMDMzQzUuMTc2NzggNi4yMzc0NCA1LjE3Njc4IDUuNzYyNTYgNS40Njk2NyA1LjQ2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowRightDownOutlineIcon extends StatelessWidget {
  /// Creates the `arrow-right-down` icon in the outline style.
  const ArrowRightDownOutlineIcon({
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
    name: 'arrow-right-down',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M5.46967 5.46967C5.76256 5.17678 6.23744 5.17678 6.53033 5.46967L17.25 16.1893L17.25 9C17.25 8.58579 17.5858 8.25 18 8.25C18.4142 8.25 18.75 8.58579 18.75 9L18.75 18C18.75 18.4142 18.4142 18.75 18 18.75L9 18.75C8.58579 18.75 8.25 18.4142 8.25 18C8.25 17.5858 8.58579 17.25 9 17.25L16.1893 17.25L5.46967 6.53033C5.17678 6.23744 5.17678 5.76256 5.46967 5.46967Z" fill="currentColor"/>''',
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
