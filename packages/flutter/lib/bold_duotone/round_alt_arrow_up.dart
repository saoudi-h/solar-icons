// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-alt-arrow-up` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMjIgMTJDMjIgNi40NzcxNSAxNy41MjI4IDIgMTIgMkM2LjQ3NzE1IDIgMiA2LjQ3NzE1IDIgMTJDMiAxNy41MjI4IDYuNDc3MTUgMjIgMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNOC40Njk2NyAxMi45Njk3QzguMTc2NzggMTMuMjYyNiA4LjE3Njc4IDEzLjczNzQgOC40Njk2NyAxNC4wMzAzQzguNzYyNTYgMTQuMzIzMiA5LjIzNzQ0IDE0LjMyMzIgOS41MzAzMyAxNC4wMzAzTDEyIDExLjU2MDdMMTQuNDY5NyAxNC4wMzAzQzE0Ljc2MjYgMTQuMzIzMiAxNS4yMzc0IDE0LjMyMzIgMTUuNTMwMyAxNC4wMzAzQzE1LjgyMzIgMTMuNzM3NCAxNS44MjMyIDEzLjI2MjYgMTUuNTMwMyAxMi45Njk3TDEyLjUzMDMgOS45Njk2N0MxMi4yMzc0IDkuNjc2NzggMTEuNzYyNiA5LjY3Njc4IDExLjQ2OTcgOS45Njk2N0w4LjQ2OTY3IDEyLjk2OTdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RoundAltArrowUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-alt-arrow-up` icon in the boldDuotone style.
  const RoundAltArrowUpBoldDuotoneIcon({
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
    name: 'round-alt-arrow-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M8.46967 12.9697C8.17678 13.2626 8.17678 13.7374 8.46967 14.0303C8.76256 14.3232 9.23744 14.3232 9.53033 14.0303L12 11.5607L14.4697 14.0303C14.7626 14.3232 15.2374 14.3232 15.5303 14.0303C15.8232 13.7374 15.8232 13.2626 15.5303 12.9697L12.5303 9.96967C12.2374 9.67678 11.7626 9.67678 11.4697 9.96967L8.46967 12.9697Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12Z" fill="currentColor"/>''',
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
