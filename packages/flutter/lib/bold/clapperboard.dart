// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `clapperboard` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEwLjA5NTcgMi4wMDQ0NUM2LjYyMTk0IDIuMDMwNzIgNC43MTY4MyAyLjIxMjEgMy40NjQ0NyAzLjQ2NDQ3QzIuNjA2OCA0LjMyMjEzIDIuMjUxNDMgNS40ODU5MyAyLjEwNDE4IDcuMjUwMDJINi41OTg2MUwxMC4wOTU3IDIuMDA0NDVaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yLjAyNjQ0IDguNzUwMDJDMiA5LjY4ODc1IDIgMTAuNzYzMyAyIDEyQzIgMTYuNzE0IDIgMTkuMDcxMSAzLjQ2NDQ3IDIwLjUzNTVDNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyIDIyQzE2LjcxNCAyMiAxOS4wNzExIDIyIDIwLjUzNTUgMjAuNTM1NUMyMiAxOS4wNzExIDIyIDE2LjcxNCAyMiAxMkMyMiAxMC43NjMzIDIyIDkuNjg4NzUgMjEuOTczNiA4Ljc1MDAySDIuMDI2NDRaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0yMS44OTU4IDcuMjUwMDJDMjEuNzQ4NiA1LjQ4NTkzIDIxLjM5MzIgNC4zMjIxMyAyMC41MzU1IDMuNDY0NDdDMTkuOTM4MiAyLjg2NzE0IDE5LjE5MjQgMi41MTM0NSAxOC4xOTg3IDIuMzA0MDNMMTQuOTAxNCA3LjI1MDAySDIxLjg5NThaIiBmaWxsPSIjMUMyNzRDIi8+CjxwYXRoIGQ9Ik0xNi41NDAxIDIuMDg3ODNDMTUuMzI5MyAyIDEzLjg0NTIgMiAxMiAyQzExLjk2NyAyIDExLjkzNDIgMiAxMS45MDE0IDJMOC40MDEzOSA3LjI1MDAySDEzLjA5ODZMMTYuNTQwMSAyLjA4NzgzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ClapperboardBoldIcon extends StatelessWidget {
  /// Creates the `clapperboard` icon in the bold style.
  const ClapperboardBoldIcon({
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
    name: 'clapperboard',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M10.0957 2.00445C6.62194 2.03072 4.71683 2.2121 3.46447 3.46447C2.6068 4.32213 2.25143 5.48593 2.10418 7.25002H6.59861L10.0957 2.00445Z" fill="currentColor"/>
<path d="M2.02644 8.75002C2 9.68875 2 10.7633 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22C16.714 22 19.0711 22 20.5355 20.5355C22 19.0711 22 16.714 22 12C22 10.7633 22 9.68875 21.9736 8.75002H2.02644Z" fill="currentColor"/>
<path d="M21.8958 7.25002C21.7486 5.48593 21.3932 4.32213 20.5355 3.46447C19.9382 2.86714 19.1924 2.51345 18.1987 2.30403L14.9014 7.25002H21.8958Z" fill="currentColor"/>
<path d="M16.5401 2.08783C15.3293 2 13.8452 2 12 2C11.967 2 11.9342 2 11.9014 2L8.40139 7.25002H13.0986L16.5401 2.08783Z" fill="currentColor"/>''',
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
