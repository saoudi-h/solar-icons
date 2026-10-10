// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-arrow-right` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyQzIgMTcuNTIyOCA2LjQ3NzE1IDIyIDEyIDIyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTMuNTMwMyA4LjQ2OTY3QzEzLjIzNzQgOC4xNzY3OCAxMi43NjI2IDguMTc2NzggMTIuNDY5NyA4LjQ2OTY3QzEyLjE3NjggOC43NjI1NiAxMi4xNzY4IDkuMjM3NDQgMTIuNDY5NyA5LjUzMDMzTDE0LjE4OTMgMTEuMjVIOEM3LjU4NTc5IDExLjI1IDcuMjUgMTEuNTg1OCA3LjI1IDEyQzcuMjUgMTIuNDE0MiA3LjU4NTc5IDEyLjc1IDggMTIuNzVIMTQuMTg5M0wxMi40Njk3IDE0LjQ2OTdDMTIuMTc2OCAxNC43NjI2IDEyLjE3NjggMTUuMjM3NCAxMi40Njk3IDE1LjUzMDNDMTIuNzYyNiAxNS44MjMyIDEzLjIzNzQgMTUuODIzMiAxMy41MzAzIDE1LjUzMDNMMTYuNTMwMyAxMi41MzAzQzE2LjgyMzIgMTIuMjM3NCAxNi44MjMyIDExLjc2MjYgMTYuNTMwMyAxMS40Njk3TDEzLjUzMDMgOC40Njk2N1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class RoundArrowRightBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-arrow-right` icon in the boldDuotone style.
  const RoundArrowRightBoldDuotoneIcon({
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
    name: 'round-arrow-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M13.5303 8.46967C13.2374 8.17678 12.7626 8.17678 12.4697 8.46967C12.1768 8.76256 12.1768 9.23744 12.4697 9.53033L14.1893 11.25H8C7.58579 11.25 7.25 11.5858 7.25 12C7.25 12.4142 7.58579 12.75 8 12.75H14.1893L12.4697 14.4697C12.1768 14.7626 12.1768 15.2374 12.4697 15.5303C12.7626 15.8232 13.2374 15.8232 13.5303 15.5303L16.5303 12.5303C16.8232 12.2374 16.8232 11.7626 16.5303 11.4697L13.5303 8.46967Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/>''',
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
