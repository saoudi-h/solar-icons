// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `square-top-down` icon in the boldDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMiAxMkMyIDcuMjg1OTUgMiA0LjkyODkzIDMuNDY0NDcgMy40NjQ0N0M0LjkyODkzIDIgNy4yODU5NSAyIDEyIDJDMTYuNzE0IDIgMTkuMDcxMSAyIDIwLjUzNTUgMy40NjQ0N0MyMiA0LjkyODkzIDIyIDcuMjg1OTUgMjIgMTJDMjIgMTYuNzE0IDIyIDE5LjA3MTEgMjAuNTM1NSAyMC41MzU1QzE5LjA3MTEgMjIgMTYuNzE0IDIyIDEyIDIyQzcuMjg1OTUgMjIgNC45Mjg5MyAyMiAzLjQ2NDQ3IDIwLjUzNTVDMiAxOS4wNzExIDIgMTYuNzE0IDIgMTJaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIuNDY5NyAxMS41MzAzQzEyLjE3NjggMTEuMjM3NCAxMi4xNzY4IDEwLjc2MjYgMTIuNDY5NyAxMC40Njk3TDIwLjE4OTMgMi43NUgxNi42NTYyQzE2LjI0MiAyLjc1IDE1LjkwNjIgMi40MTQyMSAxNS45MDYyIDJDMTUuOTA2MiAxLjU4NTc5IDE2LjI0MiAxLjI1IDE2LjY1NjIgMS4yNUgyMkMyMi40MTQyIDEuMjUgMjIuNzUgMS41ODU3OSAyMi43NSAyVjcuMzQzNzVDMjIuNzUgNy43NTc5NiAyMi40MTQyIDguMDkzNzUgMjIgOC4wOTM3NUMyMS41ODU4IDguMDkzNzUgMjEuMjUgNy43NTc5NiAyMS4yNSA3LjM0Mzc1VjMuODEwNjZMMTMuNTMwMyAxMS41MzAzQzEzLjIzNzQgMTEuODIzMiAxMi43NjI2IDExLjgyMzIgMTIuNDY5NyAxMS41MzAzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class SquareTopDownBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `square-top-down` icon in the boldDuotone style.
  const SquareTopDownBoldDuotoneIcon({
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
    name: 'square-top-down',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M12.4697 11.5303C12.1768 11.2374 12.1768 10.7626 12.4697 10.4697L20.1893 2.75H16.6562C16.242 2.75 15.9062 2.41421 15.9062 2C15.9062 1.58579 16.242 1.25 16.6562 1.25H22C22.4142 1.25 22.75 1.58579 22.75 2V7.34375C22.75 7.75796 22.4142 8.09375 22 8.09375C21.5858 8.09375 21.25 7.75796 21.25 7.34375V3.81066L13.5303 11.5303C13.2374 11.8232 12.7626 11.8232 12.4697 11.5303Z" fill="currentColor"/>''',
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
