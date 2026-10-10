// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `undo-left-round` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik03LjUzMDMzIDMuNDY5NjdDNy44MjMyMiAzLjc2MjU2IDcuODIzMjIgNC4yMzc0NCA3LjUzMDMzIDQuNTMwMzNMNS44MTA2NiA2LjI1SDE1QzE4LjE3NTYgNi4yNSAyMC43NSA4LjgyNDM2IDIwLjc1IDEyQzIwLjc1IDE1LjE3NTYgMTguMTc1NiAxNy43NSAxNSAxNy43NUg4LjAwMDAxQzcuNTg1NzkgMTcuNzUgNy4yNTAwMSAxNy40MTQyIDcuMjUwMDEgMTdDNy4yNTAwMSAxNi41ODU4IDcuNTg1NzkgMTYuMjUgOC4wMDAwMSAxNi4yNUgxNUMxNy4zNDcyIDE2LjI1IDE5LjI1IDE0LjM0NzIgMTkuMjUgMTJDMTkuMjUgOS42NTI3OSAxNy4zNDcyIDcuNzUgMTUgNy43NUg1LjgxMDY2TDcuNTMwMzMgOS40Njk2N0M3LjgyMzIyIDkuNzYyNTYgNy44MjMyMiAxMC4yMzc0IDcuNTMwMzMgMTAuNTMwM0M3LjIzNzQ0IDEwLjgyMzIgNi43NjI1NiAxMC44MjMyIDYuNDY5NjcgMTAuNTMwM0wzLjQ2OTY3IDcuNTMwMzNDMy4xNzY3OCA3LjIzNzQ0IDMuMTc2NzggNi43NjI1NiAzLjQ2OTY3IDYuNDY5NjdMNi40Njk2NyAzLjQ2OTY3QzYuNzYyNTYgMy4xNzY3OCA3LjIzNzQ0IDMuMTc2NzggNy41MzAzMyAzLjQ2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class UndoLeftRoundBoldIcon extends StatelessWidget {
  /// Creates the `undo-left-round` icon in the bold style.
  const UndoLeftRoundBoldIcon({
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
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M7.53033 3.46967C7.82322 3.76256 7.82322 4.23744 7.53033 4.53033L5.81066 6.25H15C18.1756 6.25 20.75 8.82436 20.75 12C20.75 15.1756 18.1756 17.75 15 17.75H8.00001C7.58579 17.75 7.25001 17.4142 7.25001 17C7.25001 16.5858 7.58579 16.25 8.00001 16.25H15C17.3472 16.25 19.25 14.3472 19.25 12C19.25 9.65279 17.3472 7.75 15 7.75H5.81066L7.53033 9.46967C7.82322 9.76256 7.82322 10.2374 7.53033 10.5303C7.23744 10.8232 6.76256 10.8232 6.46967 10.5303L3.46967 7.53033C3.17678 7.23744 3.17678 6.76256 3.46967 6.46967L6.46967 3.46967C6.76256 3.17678 7.23744 3.17678 7.53033 3.46967Z" fill="currentColor"/>''',
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
