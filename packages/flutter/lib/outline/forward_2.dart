// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `forward-2` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik00LjUgNi4yNUM0LjkxNDIxIDYuMjUgNS4yNSA2LjU4NTc5IDUuMjUgN0M1LjI1IDguNzU1NTYgNS45NjQ2OCA5Ljc4MDQgNi44MTMyMyAxMC4zOTEzQzcuNzAwMDIgMTEuMDI5OCA4Ljc4NjY4IDExLjI1IDkuNSAxMS4yNUwxNy42ODkzIDExLjI1TDEzLjk2OTcgNy41MzAzM0MxMy42NzY4IDcuMjM3NDQgMTMuNjc2OCA2Ljc2MjU2IDEzLjk2OTcgNi40Njk2N0MxNC4yNjI2IDYuMTc2NzggMTQuNzM3NCA2LjE3Njc4IDE1LjAzMDMgNi40Njk2N0wyMC4wMzAzIDExLjQ2OTdDMjAuMzIzMiAxMS43NjI2IDIwLjMyMzIgMTIuMjM3NCAyMC4wMzAzIDEyLjUzMDNMMTUuMDMwMyAxNy41MzAzQzE0LjczNzQgMTcuODIzMiAxNC4yNjI2IDE3LjgyMzIgMTMuOTY5NyAxNy41MzAzQzEzLjY3NjggMTcuMjM3NCAxMy42NzY4IDE2Ljc2MjYgMTMuOTY5NyAxNi40Njk3TDE3LjY4OTMgMTIuNzVMOS41IDEyLjc1QzguNTQ2NjUgMTIuNzUgNy4xMzMzMiAxMi40NzAyIDUuOTM2NzcgMTEuNjA4N0M0LjcwMTk4IDEwLjcxOTYgMy43NSA5LjI0NDQ0IDMuNzUgN0MzLjc1IDYuNTg1NzkgNC4wODU3OSA2LjI1IDQuNSA2LjI1WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class Forward2OutlineIcon extends StatelessWidget {
  /// Creates the `forward-2` icon in the outline style.
  const Forward2OutlineIcon({
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
    name: 'forward-2',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.5 6.25C4.91421 6.25 5.25 6.58579 5.25 7C5.25 8.75556 5.96468 9.7804 6.81323 10.3913C7.70002 11.0298 8.78668 11.25 9.5 11.25L17.6893 11.25L13.9697 7.53033C13.6768 7.23744 13.6768 6.76256 13.9697 6.46967C14.2626 6.17678 14.7374 6.17678 15.0303 6.46967L20.0303 11.4697C20.3232 11.7626 20.3232 12.2374 20.0303 12.5303L15.0303 17.5303C14.7374 17.8232 14.2626 17.8232 13.9697 17.5303C13.6768 17.2374 13.6768 16.7626 13.9697 16.4697L17.6893 12.75L9.5 12.75C8.54665 12.75 7.13332 12.4702 5.93677 11.6087C4.70198 10.7196 3.75 9.24444 3.75 7C3.75 6.58579 4.08579 6.25 4.5 6.25Z" fill="currentColor"/>''',
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
