// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-arrow-left` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDNi40NzcxNSAyMiAyIDE3LjUyMjggMiAxMkMyIDYuNDc3MTUgNi40NzcxNSAyIDEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTAuNDY5NyA4LjQ2OTY3QzEwLjc2MjYgOC4xNzY3OCAxMS4yMzc0IDguMTc2NzggMTEuNTMwMyA4LjQ2OTY3QzExLjgyMzIgOC43NjI1NiAxMS44MjMyIDkuMjM3NDQgMTEuNTMwMyA5LjUzMDMzTDkuODEwNjYgMTEuMjVIMTZDMTYuNDE0MiAxMS4yNSAxNi43NSAxMS41ODU4IDE2Ljc1IDEyQzE2Ljc1IDEyLjQxNDIgMTYuNDE0MiAxMi43NSAxNiAxMi43NUg5LjgxMDY2TDExLjUzMDMgMTQuNDY5N0MxMS44MjMyIDE0Ljc2MjYgMTEuODIzMiAxNS4yMzc0IDExLjUzMDMgMTUuNTMwM0MxMS4yMzc0IDE1LjgyMzIgMTAuNzYyNiAxNS44MjMyIDEwLjQ2OTcgMTUuNTMwM0w3LjQ2OTY3IDEyLjUzMDNDNy4xNzY3OCAxMi4yMzc0IDcuMTc2NzggMTEuNzYyNiA3LjQ2OTY3IDExLjQ2OTdMMTAuNDY5NyA4LjQ2OTY3WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class RoundArrowLeftBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-arrow-left` icon in the boldDuotone style.
  const RoundArrowLeftBoldDuotoneIcon({
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
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10.4697 8.46967C10.7626 8.17678 11.2374 8.17678 11.5303 8.46967C11.8232 8.76256 11.8232 9.23744 11.5303 9.53033L9.81066 11.25H16C16.4142 11.25 16.75 11.5858 16.75 12C16.75 12.4142 16.4142 12.75 16 12.75H9.81066L11.5303 14.4697C11.8232 14.7626 11.8232 15.2374 11.5303 15.5303C11.2374 15.8232 10.7626 15.8232 10.4697 15.5303L7.46967 12.5303C7.17678 12.2374 7.17678 11.7626 7.46967 11.4697L10.4697 8.46967Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22Z" fill="currentColor"/>''',
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
