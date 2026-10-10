// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `undo-right-round` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNi40Njk3IDMuNDY5NjdDMTYuNzYyNiAzLjE3Njc4IDE3LjIzNzQgMy4xNzY3OCAxNy41MzAzIDMuNDY5NjdMMjAuNTMwMyA2LjQ2OTY3QzIwLjgyMzIgNi43NjI1NiAyMC44MjMyIDcuMjM3NDQgMjAuNTMwMyA3LjUzMDMzTDE3LjUzMDMgMTAuNTMwM0MxNy4yMzc0IDEwLjgyMzIgMTYuNzYyNiAxMC44MjMyIDE2LjQ2OTcgMTAuNTMwM0MxNi4xNzY4IDEwLjIzNzQgMTYuMTc2OCA5Ljc2MjU2IDE2LjQ2OTcgOS40Njk2N0wxOC4xODkzIDcuNzVIOS4wMDAwMUM2LjY1MjggNy43NSA0Ljc1IDkuNjUyNzkgNC43NSAxMkM0Ljc1IDE0LjM0NzIgNi42NTI3OSAxNi4yNSA5IDE2LjI1SDE2QzE2LjQxNDIgMTYuMjUgMTYuNzUgMTYuNTg1OCAxNi43NSAxN0MxNi43NSAxNy40MTQyIDE2LjQxNDIgMTcuNzUgMTYgMTcuNzVIOUM1LjgyNDM2IDE3Ljc1IDMuMjUgMTUuMTc1NiAzLjI1IDEyQzMuMjUgOC44MjQzNiA1LjgyNDM3IDYuMjUgOS4wMDAwMSA2LjI1SDE4LjE4OTNMMTYuNDY5NyA0LjUzMDMzQzE2LjE3NjggNC4yMzc0NCAxNi4xNzY4IDMuNzYyNTYgMTYuNDY5NyAzLjQ2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class UndoRightRoundOutlineIcon extends StatelessWidget {
  /// Creates the `undo-right-round` icon in the outline style.
  const UndoRightRoundOutlineIcon({
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
    name: 'undo-right-round',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M16.4697 3.46967C16.7626 3.17678 17.2374 3.17678 17.5303 3.46967L20.5303 6.46967C20.8232 6.76256 20.8232 7.23744 20.5303 7.53033L17.5303 10.5303C17.2374 10.8232 16.7626 10.8232 16.4697 10.5303C16.1768 10.2374 16.1768 9.76256 16.4697 9.46967L18.1893 7.75H9.00001C6.6528 7.75 4.75 9.65279 4.75 12C4.75 14.3472 6.65279 16.25 9 16.25H16C16.4142 16.25 16.75 16.5858 16.75 17C16.75 17.4142 16.4142 17.75 16 17.75H9C5.82436 17.75 3.25 15.1756 3.25 12C3.25 8.82436 5.82437 6.25 9.00001 6.25H18.1893L16.4697 4.53033C16.1768 4.23744 16.1768 3.76256 16.4697 3.46967Z" fill="currentColor"/>''',
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
