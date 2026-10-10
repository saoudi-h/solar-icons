// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-bottom-up` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiAxMkMyIDcuMjg1OTUgMiA0LjkyODkzIDMuNDY0NDcgMy40NjQ0N0M0LjkyODkzIDIgNy4yODU5NSAyIDEyIDJDMTYuNzE0IDIgMTkuMDcxMSAyIDIwLjUzNTUgMy40NjQ0N0MyMiA0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTJDMjIgMTYuNzE0IDIyIDE5LjA3MTEgMjAuNTM1NSAyMC41MzU1QzE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyIDIyQzcuMjg1OTUgMjIgNC45Mjg5MyAyMiAzLjQ2NDQ3IDIwLjUzNTVDMiAxOS4wNzExIDIgMTYuNzE0IDIgMTJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNC4yNSAxM0M0LjI1IDEyLjU4NTggNC41ODU3OSAxMi4yNSA1IDEyLjI1SDExQzExLjQxNDIgMTIuMjUgMTEuNzUgMTIuNTg1OCAxMS43NSAxM1YxOUMxMS43NSAxOS40MTQyIDExLjQxNDIgMTkuNzUgMTEgMTkuNzVDMTAuNTg1OCAxOS43NSAxMC4yNSAxOS40MTQyIDEwLjI1IDE5VjE0LjgxMDdMMy41MzAzMyAyMS41MzAzQzMuMjM3NDQgMjEuODIzMiAyLjc2MjU2IDIxLjgyMzIgMi40Njk2NyAyMS41MzAzQzIuMTc2NzggMjEuMjM3NCAyLjE3Njc4IDIwLjc2MjYgMi40Njk2NyAyMC40Njk3TDkuMTg5MzQgMTMuNzVINUM0LjU4NTc5IDEzLjc1IDQuMjUgMTMuNDE0MiA0LjI1IDEzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class SquareBottomUpBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `square-bottom-up` icon in the boldDuotone style.
  const SquareBottomUpBoldDuotoneIcon({
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
    name: 'square-bottom-up',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.25 13C4.25 12.5858 4.58579 12.25 5 12.25H11C11.4142 12.25 11.75 12.5858 11.75 13V19C11.75 19.4142 11.4142 19.75 11 19.75C10.5858 19.75 10.25 19.4142 10.25 19V14.8107L3.53033 21.5303C3.23744 21.8232 2.76256 21.8232 2.46967 21.5303C2.17678 21.2374 2.17678 20.7626 2.46967 20.4697L9.18934 13.75H5C4.58579 13.75 4.25 13.4142 4.25 13Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" fill="currentColor"/>''',
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
