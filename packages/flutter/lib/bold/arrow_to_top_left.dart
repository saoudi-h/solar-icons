// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-to-top-left` icon in the bold style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNy41MzAzIDEwLjAzMDNDMTcuODIzMiA5LjczNzQ0IDE3LjgyMzIgOS4yNjI1NiAxNy41MzAzIDguOTY5NjdMMTIuNTMwMyAzLjk2OTY3QzEyLjIzNzQgMy42NzY3OCAxMS43NjI2IDMuNjc2NzggMTEuNDY5NyAzLjk2OTY3TDYuNDY5NjcgOC45Njk2N0M2LjE3Njc4IDkuMjYyNTYgNi4xNzY3OCA5LjczNzQ0IDYuNDY5NjcgMTAuMDMwM0M2Ljc2MjU2IDEwLjMyMzIgNy4yMzc0NCAxMC4zMjMyIDcuNTMwMzMgMTAuMDMwM0wxMS4yNSA2LjMxMDY2TDExLjI1IDE0LjVDMTEuMjUgMTUuMjEzMyAxMS4wMjk4IDE2LjMgMTAuMzkxMyAxNy4xODY4QzkuNzgwNCAxOC4wMzUzIDguNzU1NTYgMTguNzUgNyAxOC43NUM2LjU4NTc5IDE4Ljc1IDYuMjUgMTkuMDg1OCA2LjI1IDE5LjVDNi4yNSAxOS45MTQyIDYuNTg1NzkgMjAuMjUgNyAyMC4yNUM5LjI0NDQ0IDIwLjI1IDEwLjcxOTYgMTkuMjk4IDExLjYwODcgMTguMDYzMkMxMi40NzAyIDE2Ljg2NjcgMTIuNzUgMTUuNDUzNCAxMi43NSAxNC41TDEyLjc1IDYuMzEwNjZMMTYuNDY5NyAxMC4wMzAzQzE2Ljc2MjYgMTAuMzIzMiAxNy4yMzc0IDEwLjMyMzIgMTcuNTMwMyAxMC4wMzAzWiIgZmlsbD0iIzFDMjc0QyIvPgo8L3N2Zz4K)
class ArrowToTopLeftBoldIcon extends StatelessWidget {
  /// Creates the `arrow-to-top-left` icon in the bold style.
  const ArrowToTopLeftBoldIcon({
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
    name: 'arrow-to-top-left',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17.5303 10.0303C17.8232 9.73744 17.8232 9.26256 17.5303 8.96967L12.5303 3.96967C12.2374 3.67678 11.7626 3.67678 11.4697 3.96967L6.46967 8.96967C6.17678 9.26256 6.17678 9.73744 6.46967 10.0303C6.76256 10.3232 7.23744 10.3232 7.53033 10.0303L11.25 6.31066L11.25 14.5C11.25 15.2133 11.0298 16.3 10.3913 17.1868C9.7804 18.0353 8.75556 18.75 7 18.75C6.58579 18.75 6.25 19.0858 6.25 19.5C6.25 19.9142 6.58579 20.25 7 20.25C9.24444 20.25 10.7196 19.298 11.6087 18.0632C12.4702 16.8667 12.75 15.4534 12.75 14.5L12.75 6.31066L16.4697 10.0303C16.7626 10.3232 17.2374 10.3232 17.5303 10.0303Z" fill="currentColor"/>''',
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
