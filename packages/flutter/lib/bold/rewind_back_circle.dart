// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `rewind-back-circle` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyMkM2LjQ3NzE1IDIyIDIgMTcuNTIyOCAyIDEyQzIgNi40NzcxNSA2LjQ3NzE1IDIgMTIgMkMxNy41MjI4IDIgMjIgNi40NzcxNSAyMiAxMkMyMiAxNy41MjI4IDE3LjUyMjggMjIgMTIgMjJaTTEwLjU2NCA3LjQ2MTA1QzEwLjkwMTEgNy4yMjAyOSAxMS4zNjk1IDcuMjk4MzYgMTEuNjEwMiA3LjYzNTQyQzExLjg1MSA3Ljk3MjQ4IDExLjc3MjkgOC40NDA4OSAxMS40MzU5IDguNjgxNjVMOC4yMTQzMiAxMC45ODI4QzcuNTE2MzkgMTEuNDgxMyA3LjUxNjM5IDEyLjUxODYgOC4yMTQzMiAxMy4wMTcxTDExLjQzNTkgMTUuMzE4MkMxMS43NzI5IDE1LjU1ODkgMTEuODUxIDE2LjAyNzQgMTEuNjEwMiAxNi4zNjQ0QzExLjM2OTUgMTYuNzAxNSAxMC45MDExIDE2Ljc3OTUgMTAuNTY0IDE2LjUzODhMNy4zNDI0NyAxNC4yMzc3QzUuODA3MDEgMTMuMTQwOSA1LjgwNzAxIDEwLjg1ODkgNy4zNDI0NyA5Ljc2MjE1TDEwLjU2NCA3LjQ2MTA1Wk0xNi41IDE1LjEzMThWOC44Njg4N0MxNi41IDguMDcwMTcgMTUuNjA5OSA3LjU5Mzc4IDE0Ljk0NTMgOC4wMzY4MkwxMC4yNDgxIDExLjE2ODNDOS42NTQzNCAxMS41NjQxIDkuNjU0MzQgMTIuNDM2NiAxMC4yNDgxIDEyLjgzMjRMMTQuOTQ1MyAxNS45NjM5QzE1LjYwOTkgMTYuNDA2OSAxNi41IDE1LjkzMDUgMTYuNSAxNS4xMzE4WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class RewindBackCircleBoldIcon extends StatelessWidget {
  /// Creates the `rewind-back-circle` icon in the bold style.
  const RewindBackCircleBoldIcon({
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
    name: 'rewind-back-circle',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22ZM10.564 7.46105C10.9011 7.22029 11.3695 7.29836 11.6102 7.63542C11.851 7.97248 11.7729 8.44089 11.4359 8.68165L8.21432 10.9828C7.51639 11.4813 7.51639 12.5186 8.21432 13.0171L11.4359 15.3182C11.7729 15.5589 11.851 16.0274 11.6102 16.3644C11.3695 16.7015 10.9011 16.7795 10.564 16.5388L7.34247 14.2377C5.80701 13.1409 5.80701 10.8589 7.34247 9.76215L10.564 7.46105ZM16.5 15.1318V8.86887C16.5 8.07017 15.6099 7.59378 14.9453 8.03682L10.2481 11.1683C9.65434 11.5641 9.65434 12.4366 10.2481 12.8324L14.9453 15.9639C15.6099 16.4069 16.5 15.9305 16.5 15.1318Z" fill="currentColor"/>''',
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
