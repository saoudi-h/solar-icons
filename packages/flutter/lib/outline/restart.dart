// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `restart` icon in the outline style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xOC4zNjQgMy4wNTY2NEMxOC43NzgyIDMuMDU2NjQgMTkuMTE0IDMuMzkyNDMgMTkuMTE0IDMuODA2NjRWOC4wNDkyOEMxOS4xMTQgOC40NjM0OSAxOC43NzgyIDguNzk5MjggMTguMzY0IDguNzk5MjhIMTQuMTIxM0MxMy43MDcxIDguNzk5MjggMTMuMzcxMyA4LjQ2MzQ5IDEzLjM3MTMgOC4wNDkyOEMxMy4zNzEzIDcuNjM1MDcgMTMuNzA3MSA3LjI5OTI4IDE0LjEyMTMgNy4yOTkyOEgxNi40ODE3QzEzLjYzNjMgNS4wNTYyIDkuNDk4NyA1LjI0NzI4IDYuODczNDggNy44NzI1QzQuMDQyMTcgMTAuNzAzOCA0LjA0MjE3IDE1LjI5NDMgNi44NzM0OCAxOC4xMjU2QzkuNzA0NzggMjAuOTU2OSAxNC4yOTUyIDIwLjk1NjkgMTcuMTI2NSAxOC4xMjU2QzE5LjAyMzQgMTYuMjI4NyAxOS42NTA0IDEzLjU0MTggMTkuMDAzOSAxMS4xMjA5QzE4Ljg5NyAxMC43MjA3IDE5LjEzNDggMTAuMzA5NyAxOS41MzUgMTAuMjAyOEMxOS45MzUyIDEwLjA5NTkgMjAuMzQ2MiAxMC4zMzM3IDIwLjQ1MzEgMTAuNzMzOUMyMS4yMzIxIDEzLjY1MDggMjAuNDc4IDE2Ljg5NTQgMTguMTg3MiAxOS4xODYyQzE0Ljc3MDEgMjIuNjAzMyA5LjIyOTkgMjIuNjAzMyA1LjgxMjgyIDE5LjE4NjJDMi4zOTU3MyAxNS43NjkxIDIuMzk1NzMgMTAuMjI4OSA1LjgxMjgyIDYuODExODRDOS4wNDQ4MyAzLjU3OTgzIDE0LjE3NjIgMy40MDQ3OCAxNy42MTQgNi4yODY3VjMuODA2NjRDMTcuNjE0IDMuMzkyNDMgMTcuOTQ5NyAzLjA1NjY0IDE4LjM2NCAzLjA1NjY0WiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class RestartOutlineIcon extends StatelessWidget {
  /// Creates the `restart` icon in the outline style.
  const RestartOutlineIcon({
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
    name: 'restart',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M18.364 3.05664C18.7782 3.05664 19.114 3.39243 19.114 3.80664V8.04928C19.114 8.46349 18.7782 8.79928 18.364 8.79928H14.1213C13.7071 8.79928 13.3713 8.46349 13.3713 8.04928C13.3713 7.63507 13.7071 7.29928 14.1213 7.29928H16.4817C13.6363 5.0562 9.4987 5.24728 6.87348 7.8725C4.04217 10.7038 4.04217 15.2943 6.87348 18.1256C9.70478 20.9569 14.2952 20.9569 17.1265 18.1256C19.0234 16.2287 19.6504 13.5418 19.0039 11.1209C18.897 10.7207 19.1348 10.3097 19.535 10.2028C19.9352 10.0959 20.3462 10.3337 20.4531 10.7339C21.2321 13.6508 20.478 16.8954 18.1872 19.1862C14.7701 22.6033 9.2299 22.6033 5.81282 19.1862C2.39573 15.7691 2.39573 10.2289 5.81282 6.81184C9.04483 3.57983 14.1762 3.40478 17.614 6.2867V3.80664C17.614 3.39243 17.9497 3.05664 18.364 3.05664Z" fill="currentColor"/>''',
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
