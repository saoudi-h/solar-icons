// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `align-vertical-spacing` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xLjI1IDIxQzEuMjUgMjAuNTg1OCAxLjU4NTc5IDIwLjI1IDIgMjAuMjVMMjIgMjAuMjVDMjIuNDE0MiAyMC4yNSAyMi43NSAyMC41ODU4IDIyLjc1IDIxQzIyLjc1IDIxLjQxNDIgMjIuNDE0MiAyMS43NSAyMiAyMS43NUwyIDIxLjc1QzEuNTg1NzkgMjEuNzUgMS4yNSAyMS40MTQyIDEuMjUgMjFaTTEuMjUgM0MxLjI1IDIuNTg1NzkgMS41ODU3OSAyLjI1IDIgMi4yNUwyMiAyLjI1QzIyLjQxNDIgMi4yNSAyMi43NSAyLjU4NTc5IDIyLjc1IDNDMjIuNzUgMy40MTQyMSAyMi40MTQyIDMuNzUgMjIgMy43NUwyIDMuNzVDMS41ODU3OSAzLjc1IDEuMjUgMy40MTQyMSAxLjI1IDNaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik00IDEyQzQgMTMuODg1NiA0IDE0LjgyODQgNC41ODU3OSAxNS40MTQyQzUuMTcxNTcgMTYgNi4xMTQzOCAxNiA4IDE2TDE2IDE2QzE3Ljg4NTYgMTYgMTguODI4NCAxNiAxOS40MTQyIDE1LjQxNDJDMjAgMTQuODI4NCAyMCAxMy44ODU2IDIwIDEyQzIwIDEwLjExNDQgMjAgOS4xNzE1NyAxOS40MTQyIDguNTg1NzlDMTguODI4NCA4IDE3Ljg4NTYgOCAxNiA4SDhDNi4xMTQzOCA4IDUuMTcxNTcgOCA0LjU4NTc5IDguNTg1NzlDNCA5LjE3MTU4IDQgMTAuMTE0NCA0IDEyWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class AlignVerticalSpacingBoldIcon extends StatelessWidget {
  /// Creates the `align-vertical-spacing` icon in the bold style.
  const AlignVerticalSpacingBoldIcon({
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
    name: 'align-vertical-spacing',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M1.25 21C1.25 20.5858 1.58579 20.25 2 20.25L22 20.25C22.4142 20.25 22.75 20.5858 22.75 21C22.75 21.4142 22.4142 21.75 22 21.75L2 21.75C1.58579 21.75 1.25 21.4142 1.25 21ZM1.25 3C1.25 2.58579 1.58579 2.25 2 2.25L22 2.25C22.4142 2.25 22.75 2.58579 22.75 3C22.75 3.41421 22.4142 3.75 22 3.75L2 3.75C1.58579 3.75 1.25 3.41421 1.25 3Z" fill="currentColor"/>
<path d="M4 12C4 13.8856 4 14.8284 4.58579 15.4142C5.17157 16 6.11438 16 8 16L16 16C17.8856 16 18.8284 16 19.4142 15.4142C20 14.8284 20 13.8856 20 12C20 10.1144 20 9.17157 19.4142 8.58579C18.8284 8 17.8856 8 16 8H8C6.11438 8 5.17157 8 4.58579 8.58579C4 9.17158 4 10.1144 4 12Z" fill="currentColor"/>''',
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
