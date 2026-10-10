// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-to-down-right` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik02LjQ2OTY3IDEzLjk2OTdDNi4xNzY3OCAxNC4yNjI2IDYuMTc2NzggMTQuNzM3NCA2LjQ2OTY3IDE1LjAzMDNMMTEuNDY5NyAyMC4wMzAzQzExLjc2MjYgMjAuMzIzMiAxMi4yMzc0IDIwLjMyMzIgMTIuNTMwMyAyMC4wMzAzTDE3LjUzMDMgMTUuMDMwM0MxNy44MjMyIDE0LjczNzQgMTcuODIzMiAxNC4yNjI2IDE3LjUzMDMgMTMuOTY5N0MxNy4yMzc0IDEzLjY3NjggMTYuNzYyNiAxMy42NzY4IDE2LjQ2OTcgMTMuOTY5N0wxMi43NSAxNy42ODkzTDEyLjc1IDkuNUMxMi43NSA4Ljc4NjY4IDEyLjk3MDIgNy43MDAwMSAxMy42MDg3IDYuODEzMjNDMTQuMjE5NiA1Ljk2NDY4IDE1LjI0NDQgNS4yNSAxNyA1LjI1QzE3LjQxNDIgNS4yNSAxNy43NSA0LjkxNDIxIDE3Ljc1IDQuNUMxNy43NSA0LjA4NTc5IDE3LjQxNDIgMy43NSAxNyAzLjc1QzE0Ljc1NTYgMy43NSAxMy4yODA0IDQuNzAxOTggMTIuMzkxMyA1LjkzNjc3QzExLjUyOTggNy4xMzMzMiAxMS4yNSA4LjU0NjY1IDExLjI1IDkuNUwxMS4yNSAxNy42ODkzTDcuNTMwMzMgMTMuOTY5N0M3LjIzNzQ0IDEzLjY3NjggNi43NjI1NiAxMy42NzY4IDYuNDY5NjcgMTMuOTY5N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class ArrowToDownRightBoldIcon extends StatelessWidget {
  /// Creates the `arrow-to-down-right` icon in the bold style.
  const ArrowToDownRightBoldIcon({
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
    name: 'arrow-to-down-right',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6.46967 13.9697C6.17678 14.2626 6.17678 14.7374 6.46967 15.0303L11.4697 20.0303C11.7626 20.3232 12.2374 20.3232 12.5303 20.0303L17.5303 15.0303C17.8232 14.7374 17.8232 14.2626 17.5303 13.9697C17.2374 13.6768 16.7626 13.6768 16.4697 13.9697L12.75 17.6893L12.75 9.5C12.75 8.78668 12.9702 7.70001 13.6087 6.81323C14.2196 5.96468 15.2444 5.25 17 5.25C17.4142 5.25 17.75 4.91421 17.75 4.5C17.75 4.08579 17.4142 3.75 17 3.75C14.7556 3.75 13.2804 4.70198 12.3913 5.93677C11.5298 7.13332 11.25 8.54665 11.25 9.5L11.25 17.6893L7.53033 13.9697C7.23744 13.6768 6.76256 13.6768 6.46967 13.9697Z" fill="currentColor"/>''',
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
