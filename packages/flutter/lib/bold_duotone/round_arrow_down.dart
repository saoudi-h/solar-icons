// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-arrow-down` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyQzYuNDc3MTUgMjIgMiAxNy41MjI4IDIgMTJDMiA2LjQ3NzE1IDYuNDc3MTUgMiAxMiAyQzE3LjUyMjggMiAyMiA2LjQ3NzE1IDIyIDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNOC40Njk2NyAxMy41MzAzQzguMTc2NzggMTMuMjM3NCA4LjE3Njc4IDEyLjc2MjYgOC40Njk2NyAxMi40Njk3QzguNzYyNTYgMTIuMTc2OCA5LjIzNzQ0IDEyLjE3NjggOS41MzAzMyAxMi40Njk3TDExLjI1IDE0LjE4OTNMMTEuMjUgOEMxMS4yNSA3LjU4NTc5IDExLjU4NTggNy4yNSAxMiA3LjI1QzEyLjQxNDIgNy4yNSAxMi43NSA3LjU4NTc5IDEyLjc1IDhWMTQuMTg5M0wxNC40Njk3IDEyLjQ2OTdDMTQuNzYyNiAxMi4xNzY4IDE1LjIzNzQgMTIuMTc2OCAxNS41MzAzIDEyLjQ2OTdDMTUuODIzMiAxMi43NjI2IDE1LjgyMzIgMTMuMjM3NCAxNS41MzAzIDEzLjUzMDNMMTIuNTMwMyAxNi41MzAzQzEyLjIzNzQgMTYuODIzMiAxMS43NjI2IDE2LjgyMzIgMTEuNDY5NyAxNi41MzAzTDguNDY5NjcgMTMuNTMwM1oiIGZpbGw9IiMxQzI3NEMiLz4KPC9zdmc+Cg==)
class RoundArrowDownBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-arrow-down` icon in the boldDuotone style.
  const RoundArrowDownBoldDuotoneIcon({
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
    name: 'round-arrow-down',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.46967 13.5303C8.17678 13.2374 8.17678 12.7626 8.46967 12.4697C8.76256 12.1768 9.23744 12.1768 9.53033 12.4697L11.25 14.1893L11.25 8C11.25 7.58579 11.5858 7.25 12 7.25C12.4142 7.25 12.75 7.58579 12.75 8V14.1893L14.4697 12.4697C14.7626 12.1768 15.2374 12.1768 15.5303 12.4697C15.8232 12.7626 15.8232 13.2374 15.5303 13.5303L12.5303 16.5303C12.2374 16.8232 11.7626 16.8232 11.4697 16.5303L8.46967 13.5303Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" fill="currentColor"/>''',
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
