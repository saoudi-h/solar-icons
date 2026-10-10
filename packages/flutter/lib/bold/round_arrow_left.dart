// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-arrow-left` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMiAyMkM2LjQ3NzE1IDIyIDIgMTcuNTIyOCAyIDEyQzIgNi40NzcxNSA2LjQ3NzE1IDIgMTIgMkMxNy41MjI4IDIgMjIgNi40NzcxNSAyMiAxMkMyMiAxNy41MjI4IDE3LjUyMjggMjIgMTIgMjJaTTExLjUzMDMgOC40Njk2N0MxMS4yMzc0IDguMTc2NzggMTAuNzYyNiA4LjE3Njc4IDEwLjQ2OTcgOC40Njk2N0w3LjQ2OTY3IDExLjQ2OTdDNy4xNzY3OCAxMS43NjI2IDcuMTc2NzggMTIuMjM3NCA3LjQ2OTY3IDEyLjUzMDNMMTAuNDY5NyAxNS41MzAzQzEwLjc2MjYgMTUuODIzMiAxMS4yMzc0IDE1LjgyMzIgMTEuNTMwMyAxNS41MzAzQzExLjgyMzIgMTUuMjM3NCAxMS44MjMyIDE0Ljc2MjYgMTEuNTMwMyAxNC40Njk3TDkuODEwNjYgMTIuNzVIMTZDMTYuNDE0MiAxMi43NSAxNi43NSAxMi40MTQyIDE2Ljc1IDEyQzE2Ljc1IDExLjU4NTggMTYuNDE0MiAxMS4yNSAxNiAxMS4yNUg5LjgxMDY2TDExLjUzMDMgOS41MzAzM0MxMS44MjMyIDkuMjM3NDQgMTEuODIzMiA4Ljc2MjU2IDExLjUzMDMgOC40Njk2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class RoundArrowLeftBoldIcon extends StatelessWidget {
  /// Creates the `round-arrow-left` icon in the bold style.
  const RoundArrowLeftBoldIcon({
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
    name: 'round-arrow-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22ZM11.5303 8.46967C11.2374 8.17678 10.7626 8.17678 10.4697 8.46967L7.46967 11.4697C7.17678 11.7626 7.17678 12.2374 7.46967 12.5303L10.4697 15.5303C10.7626 15.8232 11.2374 15.8232 11.5303 15.5303C11.8232 15.2374 11.8232 14.7626 11.5303 14.4697L9.81066 12.75H16C16.4142 12.75 16.75 12.4142 16.75 12C16.75 11.5858 16.4142 11.25 16 11.25H9.81066L11.5303 9.53033C11.8232 9.23744 11.8232 8.76256 11.5303 8.46967Z" fill="currentColor"/>''',
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
