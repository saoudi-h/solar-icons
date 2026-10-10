// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `round-alt-arrow-left` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIgMjJDNi40NzcxNSAyMiAyIDE3LjUyMjggMiAxMkMyIDYuNDc3MTUgNi40NzcxNSAyIDEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyWiIgZmlsbD0iIzFDMjc0QyIvPgo8cGF0aCBkPSJNMTIuOTY5NyA4LjQ2OTY3QzEzLjI2MjYgOC4xNzY3OCAxMy43Mzc0IDguMTc2NzggMTQuMDMwMyA4LjQ2OTY3QzE0LjMyMzIgOC43NjI1NiAxNC4zMjMyIDkuMjM3NDQgMTQuMDMwMyA5LjUzMDMzTDExLjU2MDcgMTJMMTQuMDMwMyAxNC40Njk3QzE0LjMyMzIgMTQuNzYyNiAxNC4zMjMyIDE1LjIzNzQgMTQuMDMwMyAxNS41MzAzQzEzLjczNzQgMTUuODIzMiAxMy4yNjI2IDE1LjgyMzIgMTIuOTY5NyAxNS41MzAzTDkuOTY5NjcgMTIuNTMwM0M5LjY3Njc4IDEyLjIzNzQgOS42NzY3OCAxMS43NjI2IDkuOTY5NjcgMTEuNDY5N0wxMi45Njk3IDguNDY5NjdaIiBmaWxsPSIjMUMyNzRDIi8+Cjwvc3ZnPgo=)
class RoundAltArrowLeftBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `round-alt-arrow-left` icon in the boldDuotone style.
  const RoundAltArrowLeftBoldDuotoneIcon({
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
    name: 'round-alt-arrow-left',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.9697 8.46967C13.2626 8.17678 13.7374 8.17678 14.0303 8.46967C14.3232 8.76256 14.3232 9.23744 14.0303 9.53033L11.5607 12L14.0303 14.4697C14.3232 14.7626 14.3232 15.2374 14.0303 15.5303C13.7374 15.8232 13.2626 15.8232 12.9697 15.5303L9.96967 12.5303C9.67678 12.2374 9.67678 11.7626 9.96967 11.4697L12.9697 8.46967Z" fill="currentColor"/>''',
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
