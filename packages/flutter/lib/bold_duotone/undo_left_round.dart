// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `undo-left-round` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik03LjUzMDMzIDMuNDY5NjdDNy4yMzc0NCAzLjE3Njc4IDYuNzYyNTYgMy4xNzY3OCA2LjQ2OTY3IDMuNDY5NjdMMy40Njk2NyA2LjQ2OTY3QzMuMTc2NzggNi43NjI1NiAzLjE3Njc4IDcuMjM3NDQgMy40Njk2NyA3LjUzMDMzTDYuNDY5NjcgMTAuNTMwM0M2Ljc2MjU2IDEwLjgyMzIgNy4yMzc0NCAxMC44MjMyIDcuNTMwMzMgMTAuNTMwM0M3LjgyMzIyIDEwLjIzNzQgNy44MjMyMiA5Ljc2MjU2IDcuNTMwMzMgOS40Njk2N0w1LjA2MDY2IDdMNy41MzAzMyA0LjUzMDMzQzcuODIzMjIgNC4yMzc0NCA3LjgyMzIyIDMuNzYyNTYgNy41MzAzMyAzLjQ2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik01LjgxMDY2IDYuMjVIMTVDMTguMTc1NiA2LjI1IDIwLjc1IDguODI0MzYgMjAuNzUgMTJDMjAuNzUgMTUuMTc1NiAxOC4xNzU2IDE3Ljc1IDE1IDE3Ljc1SDhDNy41ODU3OSAxNy43NSA3LjI1IDE3LjQxNDIgNy4yNSAxN0M3LjI1IDE2LjU4NTggNy41ODU3OSAxNi4yNSA4IDE2LjI1SDE1QzE3LjM0NzIgMTYuMjUgMTkuMjUgMTQuMzQ3MiAxOS4yNSAxMkMxOS4yNSA5LjY1Mjc5IDE3LjM0NzIgNy43NSAxNSA3Ljc1SDUuODEwNjZMNS4wNjA2NiA3TDUuODEwNjYgNi4yNVoiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class UndoLeftRoundBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `undo-left-round` icon in the boldDuotone style.
  const UndoLeftRoundBoldDuotoneIcon({
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
    name: 'undo-left-round',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.53033 3.46967C7.23744 3.17678 6.76256 3.17678 6.46967 3.46967L3.46967 6.46967C3.17678 6.76256 3.17678 7.23744 3.46967 7.53033L6.46967 10.5303C6.76256 10.8232 7.23744 10.8232 7.53033 10.5303C7.82322 10.2374 7.82322 9.76256 7.53033 9.46967L5.06066 7L7.53033 4.53033C7.82322 4.23744 7.82322 3.76256 7.53033 3.46967Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M5.81066 6.25H15C18.1756 6.25 20.75 8.82436 20.75 12C20.75 15.1756 18.1756 17.75 15 17.75H8C7.58579 17.75 7.25 17.4142 7.25 17C7.25 16.5858 7.58579 16.25 8 16.25H15C17.3472 16.25 19.25 14.3472 19.25 12C19.25 9.65279 17.3472 7.75 15 7.75H5.81066L5.06066 7L5.81066 6.25Z" fill="currentColor"/>''',
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
