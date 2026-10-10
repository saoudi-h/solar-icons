// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNy41MzAzMyAzLjQ2OTY3QzcuMjM3NDQgMy4xNzY3OCA2Ljc2MjU2IDMuMTc2NzggNi40Njk2NyAzLjQ2OTY3TDMuNDY5NjcgNi40Njk2N0MzLjE3Njc4IDYuNzYyNTYgMy4xNzY3OCA3LjIzNzQ0IDMuNDY5NjcgNy41MzAzM0w2LjQ2OTY3IDEwLjUzMDNDNi43NjI1NiAxMC44MjMyIDcuMjM3NDQgMTAuODIzMiA3LjUzMDMzIDEwLjUzMDNDNy44MjMyMiAxMC4yMzc0IDcuODIzMjIgOS43NjI1NiA3LjUzMDMzIDkuNDY5NjdMNS4wNjA2NiA3TDcuNTMwMzMgNC41MzAzM0M3LjgyMzIyIDQuMjM3NDQgNy44MjMyMiAzLjc2MjU2IDcuNTMwMzMgMy40Njk2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNNS44MTA2NiA2LjI1SDE1QzE4LjE3NTYgNi4yNSAyMC43NSA4LjgyNDM2IDIwLjc1IDEyQzIwLjc1IDE1LjE3NTYgMTguMTc1NiAxNy43NSAxNSAxNy43NUg4QzcuNTg1NzkgMTcuNzUgNy4yNSAxNy40MTQyIDcuMjUgMTdDNy4yNSAxNi41ODU4IDcuNTg1NzkgMTYuMjUgOCAxNi4yNUgxNUMxNy4zNDcyIDE2LjI1IDE5LjI1IDE0LjM0NzIgMTkuMjUgMTJDMTkuMjUgOS42NTI3OSAxNy4zNDcyIDcuNzUgMTUgNy43NUg1LjgxMDY2TDUuMDYwNjYgN0w1LjgxMDY2IDYuMjVaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
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
