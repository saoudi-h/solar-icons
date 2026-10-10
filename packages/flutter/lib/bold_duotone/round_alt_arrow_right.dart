// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-alt-arrow-right` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDMTcuNTIyOCAyMiAyMiAxNy41MjI4IDIyIDEyQzIyIDYuNDc3MTUgMTcuNTIyOCAyIDEyIDJDNi40NzcxNSAyIDIgNi40NzcxNSAyIDEyQzIgMTcuNTIyOCA2LjQ3NzE1IDIyIDEyIDIyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTEuMDMwMyA4LjQ2OTY3QzEwLjczNzQgOC4xNzY3OCAxMC4yNjI2IDguMTc2NzggOS45Njk2NyA4LjQ2OTY3QzkuNjc2NzggOC43NjI1NiA5LjY3Njc4IDkuMjM3NDQgOS45Njk2NyA5LjUzMDMzTDEyLjQzOTMgMTJMOS45Njk2NyAxNC40Njk3QzkuNjc2NzggMTQuNzYyNiA5LjY3Njc4IDE1LjIzNzQgOS45Njk2NyAxNS41MzAzQzEwLjI2MjYgMTUuODIzMiAxMC43Mzc0IDE1LjgyMzIgMTEuMDMwMyAxNS41MzAzTDE0LjAzMDMgMTIuNTMwM0MxNC4zMjMyIDEyLjIzNzQgMTQuMzIzMiAxMS43NjI2IDE0LjAzMDMgMTEuNDY5N0wxMS4wMzAzIDguNDY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RoundAltArrowRightBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-alt-arrow-right` icon in the boldDuotone style.
  const RoundAltArrowRightBoldDuotoneIcon({
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
    name: 'round-alt-arrow-right',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M11.0303 8.46967C10.7374 8.17678 10.2626 8.17678 9.96967 8.46967C9.67678 8.76256 9.67678 9.23744 9.96967 9.53033L12.4393 12L9.96967 14.4697C9.67678 14.7626 9.67678 15.2374 9.96967 15.5303C10.2626 15.8232 10.7374 15.8232 11.0303 15.5303L14.0303 12.5303C14.3232 12.2374 14.3232 11.7626 14.0303 11.4697L11.0303 8.46967Z" fill="currentColor"/>''',
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
